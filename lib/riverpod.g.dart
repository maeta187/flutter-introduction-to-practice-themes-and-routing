// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetHash() => r'd0cf58ebd5c4b6bd0259aa17bc92a27c9f6852f9';

/// 以下のルールを守る必要がある
/// - @riverpodをつける
/// - 第１引数にはRefを受け取る
///
/// Copied from [greet].
@ProviderFor(greet)
final greetProvider = AutoDisposeProvider<String>.internal(
  greet,
  name: r'greetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GreetRef = AutoDisposeProviderRef<String>;
String _$counterNotifierHash() => r'b41c3b270eeaef772b79d7364bbc747f34ed9934';

/// See also [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AutoDisposeNotifierProvider<CounterNotifier, int>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
