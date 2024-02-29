import 'package:cached_annotation/cached_annotation.dart';

part 'test.cached.dart';

@withCache
abstract class ClearCachedLazyPersistentStorage {
  factory ClearCachedLazyPersistentStorage() = _ClearCachedLazyPersistentStorage;

  @LazyPersistentCached()
  Future<int> cachedMethod() async {
    return 1;
  }
}
