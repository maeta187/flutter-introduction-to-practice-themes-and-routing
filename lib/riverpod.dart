// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

// 関数ベースのProvider
/// 以下のルールを守る必要がある
/// - @riverpodアノテーションをつける
/// - 第１引数にはRefを受け取る
/// 実装時はエラーとなるが、ルールが守られた上で`build`するとエラーが解消される
@riverpod
String greet(GreetRef ref) {
  return 'Hello, World!';
}

// 非同期処理を行うProvider
/// 'ref'以外にもパラメーターを受け取ることができる(関数ベース)
@riverpod
Future<String> asyncGreet(AsyncGreetRef ref, String str) async {
  await Future<void>.delayed(const Duration(seconds: 1));
  return 'Hello, World! $str';
}

// クラスベースのProvider
/// 以下のルールを守る必要がある
/// - @riverpodアノテーションをつける
/// - `_$` ＋ クラス名の型を継承する
/// - 初期値を`build`メソッドで返す
/// 実装時はエラーとなるが、ルールが守られた上で`build`するとエラーが解消される
/// `@Riverpod(keepAlive: true)`をつけることで、Providerが破棄されないようになる
/// `ref.refresh`メソッドを使用して任意のタイミングでProviderを再構築することができる
@Riverpod(keepAlive: true)
class CounterNotifier extends _$CounterNotifier {
  @override
  Future<int> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return 0;
  }

  void increment() async {
    // stateから現在の値を取得
    final currentValue = state.valueOrNull;
    if (currentValue == null) {
      return;
    }
    state = const AsyncLoading(); // stateをローディング状態に変更
    await Future<void>.delayed(const Duration(seconds: 1));
    state = AsyncValue.data(currentValue + 1); // stateをデータ状態に変更
  }
}

@riverpod
class AsyncCounterNotifier extends _$AsyncCounterNotifier {
  @override
  // ビルド時にパラメーターを受け取ることができる(クラスベース)
  // ignore: override_on_non_overriding_member
  Future<int> build(int num) async {
    await Future.delayed(const Duration(seconds: 1));
    return num;
  }
}

class Point {
  const Point(this.x, this.y);
  const Point.defaultConstructor()
      : x = 0,
        y = 0;

  final int x;
  final int y;
}

@riverpod
class RiverpodPoint extends _$RiverpodPoint {
  @override
  Point build() {
    return const Point.defaultConstructor(); // デフォルトの `Point` を返す
  }

  /// `Point` の値を更新するメソッド
  void updatePoint(int x, int y) {
    state = Point(x, y);
  }
}

// 非同期なProviderとRaw型
// @riverpod
// Future<int> fakeFirstApi(FakeFirstApiRef ref) async {
//   await Future.delayed(const Duration(seconds: 1));
//   return 1;
// }

/// Future型であれば`await`を使用してシンプルに実装できるのでこのような場合はProviderが提供する型を`Raw`でラップする
@riverpod
Raw<Future<int>> fakeFirstApi(FakeFirstApiRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 1;
}

@riverpod
Raw<Future<int>> fakeSecondApi(FakeSecondApiRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 2;
}

@riverpod
Future<int> fakeSumApi(FakeSumApiRef ref) async {
  final int firstResult = await ref.watch(fakeFirstApiProvider);
  final int secondResult = await ref.watch(fakeSecondApiProvider);

  return firstResult + secondResult;
}

class RiverpodSample extends StatelessWidget {
  const RiverpodSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _RiverpodSample(title: 'Flutter Demo Home Page'),
    );
  }
}

class _RiverpodSample extends ConsumerWidget {
  // ignore: unused_element
  const _RiverpodSample({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterNotifierProvider);
    final asyncCounter = asyncCounterNotifierProvider(1);
    // asyncGreetProviderを監視する
    final AsyncValue<String> greet = ref.watch(asyncGreetProvider('Flutter'));
    // selectメソッドを使用することで、値のみを取得し、yの値が変更されても再ビルドされない
    final x = ref.watch(riverpodPointProvider.select((value) => value.x));
    final AsyncValue<int> sumApiResult = ref.watch(fakeSumApiProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            counter.when(
              data: (data) => Text('$data'),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            ),
            ref.watch(asyncCounter).when(
                  // asyncCounterを直接watchせず、値を取得してからwhenを使用
                  data: (data) => Text('$data'),
                  loading: () => const CircularProgressIndicator(),
                  error: (error, stackTrace) => Text('Error: $error'),
                ),
            // AsyncValueクラスの`when`メソッドを使用して、状態別のWidgetを返す
            // 今後は`when`メソッドではなく、Dart3.0の`switch`文を使用することが推奨される
            greet.when(
              data: (data) => Text(data),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            ),
            sumApiResult.when(
              // asyncCounterを直接watchせず、値を取得してからwhenを使用
              data: (data) => Text('$data'),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            ),
            // selectで取得した値は直接表示
            Text('Point x: $x'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterNotifierProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
