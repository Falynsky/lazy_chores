import 'package:cached_annotation/cached_annotation.dart';

part 'test.cached.dart';

@withCache
abstract class DirectPersistentCachedGetter {
  factory DirectPersistentCachedGetter() = _DirectPersistentCachedGetter;

  @DirectPersistentCached()
  Future<int> get cached async {
    return 1;
  }
}
