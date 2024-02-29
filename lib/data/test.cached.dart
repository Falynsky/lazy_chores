// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'test.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ClearCachedLazyPersistentStorage {}

class _ClearCachedLazyPersistentStorage
    with ClearCachedLazyPersistentStorage
    implements _$ClearCachedLazyPersistentStorage {
  _ClearCachedLazyPersistentStorage();

  @override
  Future<int> cachedMethod() async {
    final cachedValue =
        await PersistentStorageHolder.read('_cachedMethodCached');
    if (cachedValue.isEmpty && cachedValue[''] == null) {
      final int toReturn;
      try {
        final result = super.cachedMethod();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      await PersistentStorageHolder.write(
          '_cachedMethodCached', {'': toReturn});

      return toReturn;
    } else {
      return cachedValue[''];
    }
  }
}
