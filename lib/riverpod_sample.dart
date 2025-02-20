import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// カウンターの値を保持し、インクリメントするクラス
class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0; // 初期値はビルドメソッドで返す

  void increment() {
    // インクリメントするメソッド
    state = state + 1;
  }
}

final counterNotifierProvider = NotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});

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
    final counter = ref.watch(counterNotifierProvider);
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
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
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
