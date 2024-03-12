// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'test.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$DirectPersistentCachedGetter {}

class _DirectPersistentCachedGetter
    with DirectPersistentCachedGetter
    implements _$DirectPersistentCachedGetter {
  _DirectPersistentCachedGetter();

  @override
  Future<int> get cached async {
    final cachedValue = await PersistentStorageHolder.read('_cachedCached');
    if (cachedValue.isEmpty && cachedValue[''] == null) {
      final int toReturn;
      try {
        final result = super.cached;

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      await PersistentStorageHolder.write('_cachedCached', {'': toReturn});

      return toReturn;
    } else {
      return cachedValue[''];
    }
  }
}
