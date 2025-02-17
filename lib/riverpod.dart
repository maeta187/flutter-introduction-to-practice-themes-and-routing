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
// ignore: deprecated_member_use_from_same_package
String greet(GreetRef ref) {
  return 'Hello, World!';
}

// クラスベースのProvider
/// 以下のルールを守る必要がある
/// - @riverpodアノテーションをつける
/// - `_$` ＋ クラス名の型を継承する
/// - 初期値を`build`メソッドで返す
/// 実装時はエラーとなるが、ルールが守られた上で`build`するとエラーが解消される
@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() => 0;

  void increment() {
    state = state + 1;
  }
}
