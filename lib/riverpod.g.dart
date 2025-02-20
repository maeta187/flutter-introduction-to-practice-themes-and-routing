// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetHash() => r'd0cf58ebd5c4b6bd0259aa17bc92a27c9f6852f9';

/// 以下のルールを守る必要がある
/// - @riverpodアノテーションをつける
/// - 第１引数にはRefを受け取る
/// 実装時はエラーとなるが、ルールが守られた上で`build`するとエラーが解消される
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
String _$asyncGreetHash() => r'26c6cabbc5111bce4c0253652f4b1e859a875e75';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 'ref'以外にもパラメーターを受け取ることができる
///
/// Copied from [asyncGreet].
@ProviderFor(asyncGreet)
const asyncGreetProvider = AsyncGreetFamily();

/// 'ref'以外にもパラメーターを受け取ることができる
///
/// Copied from [asyncGreet].
class AsyncGreetFamily extends Family<AsyncValue<String>> {
  /// 'ref'以外にもパラメーターを受け取ることができる
  ///
  /// Copied from [asyncGreet].
  const AsyncGreetFamily();

  /// 'ref'以外にもパラメーターを受け取ることができる
  ///
  /// Copied from [asyncGreet].
  AsyncGreetProvider call(
    String str,
  ) {
    return AsyncGreetProvider(
      str,
    );
  }

  @override
  AsyncGreetProvider getProviderOverride(
    covariant AsyncGreetProvider provider,
  ) {
    return call(
      provider.str,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncGreetProvider';
}

/// 'ref'以外にもパラメーターを受け取ることができる
///
/// Copied from [asyncGreet].
class AsyncGreetProvider extends AutoDisposeFutureProvider<String> {
  /// 'ref'以外にもパラメーターを受け取ることができる
  ///
  /// Copied from [asyncGreet].
  AsyncGreetProvider(
    String str,
  ) : this._internal(
          (ref) => asyncGreet(
            ref as AsyncGreetRef,
            str,
          ),
          from: asyncGreetProvider,
          name: r'asyncGreetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncGreetHash,
          dependencies: AsyncGreetFamily._dependencies,
          allTransitiveDependencies:
              AsyncGreetFamily._allTransitiveDependencies,
          str: str,
        );

  AsyncGreetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.str,
  }) : super.internal();

  final String str;

  @override
  Override overrideWith(
    FutureOr<String> Function(AsyncGreetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AsyncGreetProvider._internal(
        (ref) => create(ref as AsyncGreetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        str: str,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _AsyncGreetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncGreetProvider && other.str == str;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, str.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AsyncGreetRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `str` of this provider.
  String get str;
}

class _AsyncGreetProviderElement
    extends AutoDisposeFutureProviderElement<String> with AsyncGreetRef {
  _AsyncGreetProviderElement(super.provider);

  @override
  String get str => (origin as AsyncGreetProvider).str;
}

String _$fakeFirstApiHash() => r'c9174144be97c1b3924982d71a1b54d47b671bdd';

/// Future型であれば`await`を使用してシンプルに実装できるのでこのような場合はProviderが提供する型を`Raw`でラップする
///
/// Copied from [fakeFirstApi].
@ProviderFor(fakeFirstApi)
final fakeFirstApiProvider = AutoDisposeProvider<Raw<Future<int>>>.internal(
  fakeFirstApi,
  name: r'fakeFirstApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fakeFirstApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FakeFirstApiRef = AutoDisposeProviderRef<Raw<Future<int>>>;
String _$fakeSecondApiHash() => r'1ed8f98c721af0a5b5ec34ddde888ea8612a4200';

/// See also [fakeSecondApi].
@ProviderFor(fakeSecondApi)
final fakeSecondApiProvider = AutoDisposeProvider<Raw<Future<int>>>.internal(
  fakeSecondApi,
  name: r'fakeSecondApiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fakeSecondApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FakeSecondApiRef = AutoDisposeProviderRef<Raw<Future<int>>>;
String _$fakeSumApiHash() => r'09c777affe9997c91383cd84d166dc8c55667df1';

/// See also [fakeSumApi].
@ProviderFor(fakeSumApi)
final fakeSumApiProvider = AutoDisposeFutureProvider<int>.internal(
  fakeSumApi,
  name: r'fakeSumApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fakeSumApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FakeSumApiRef = AutoDisposeFutureProviderRef<int>;
String _$counterNotifierHash() => r'7cb368d5baa2f02edf0cef869b3c28e88c23ccfa';

/// 以下のルールを守る必要がある
/// - @riverpodアノテーションをつける
/// - `_$` ＋ クラス名の型を継承する
/// - 初期値を`build`メソッドで返す
/// 実装時はエラーとなるが、ルールが守られた上で`build`するとエラーが解消される
/// `@Riverpod(keepAlive: true)`をつけることで、Providerが破棄されないようになる
/// `ref.refresh`メソッドを使用して任意のタイミングでProviderを再構築することができる
///
/// Copied from [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AsyncNotifierProvider<CounterNotifier, int>.internal(
  CounterNotifier.new,
  name: r'counterNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CounterNotifier = AsyncNotifier<int>;
String _$asyncCounterNotifierHash() =>
    r'e760149a3f0781e238bee66d3101ef5f8d0677ae';

abstract class _$AsyncCounterNotifier
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final int num;

  FutureOr<int> build(
    int num,
  );
}

/// See also [AsyncCounterNotifier].
@ProviderFor(AsyncCounterNotifier)
const asyncCounterNotifierProvider = AsyncCounterNotifierFamily();

/// See also [AsyncCounterNotifier].
class AsyncCounterNotifierFamily extends Family<AsyncValue<int>> {
  /// See also [AsyncCounterNotifier].
  const AsyncCounterNotifierFamily();

  /// See also [AsyncCounterNotifier].
  AsyncCounterNotifierProvider call(
    int num,
  ) {
    return AsyncCounterNotifierProvider(
      num,
    );
  }

  @override
  AsyncCounterNotifierProvider getProviderOverride(
    covariant AsyncCounterNotifierProvider provider,
  ) {
    return call(
      provider.num,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncCounterNotifierProvider';
}

/// See also [AsyncCounterNotifier].
class AsyncCounterNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncCounterNotifier, int> {
  /// See also [AsyncCounterNotifier].
  AsyncCounterNotifierProvider(
    int num,
  ) : this._internal(
          () => AsyncCounterNotifier()..num = num,
          from: asyncCounterNotifierProvider,
          name: r'asyncCounterNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncCounterNotifierHash,
          dependencies: AsyncCounterNotifierFamily._dependencies,
          allTransitiveDependencies:
              AsyncCounterNotifierFamily._allTransitiveDependencies,
          num: num,
        );

  AsyncCounterNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num,
  }) : super.internal();

  final int num;

  @override
  FutureOr<int> runNotifierBuild(
    covariant AsyncCounterNotifier notifier,
  ) {
    return notifier.build(
      num,
    );
  }

  @override
  Override overrideWith(AsyncCounterNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncCounterNotifierProvider._internal(
        () => create()..num = num,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num: num,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncCounterNotifier, int>
      createElement() {
    return _AsyncCounterNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncCounterNotifierProvider && other.num == num;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AsyncCounterNotifierRef on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `num` of this provider.
  int get num;
}

class _AsyncCounterNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncCounterNotifier, int>
    with AsyncCounterNotifierRef {
  _AsyncCounterNotifierProviderElement(super.provider);

  @override
  int get num => (origin as AsyncCounterNotifierProvider).num;
}

String _$riverpodPointHash() => r'e2bedd0f8d9aae2e67f074790a35fe49ceb88701';

/// See also [RiverpodPoint].
@ProviderFor(RiverpodPoint)
final riverpodPointProvider =
    AutoDisposeNotifierProvider<RiverpodPoint, Point>.internal(
  RiverpodPoint.new,
  name: r'riverpodPointProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$riverpodPointHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RiverpodPoint = AutoDisposeNotifier<Point>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
