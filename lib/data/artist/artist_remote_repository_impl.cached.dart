// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'artist_remote_repository_impl.dart';

// **************************************************************************
// CachedGenerator
// **************************************************************************

abstract class _$ArtistRemoteRepositoryImpl {
  ArtistRemoteDataSource get artistRemoteDataSource;
}

class _ArtistRemoteRepositoryImpl
    with ArtistRemoteRepositoryImpl
    implements _$ArtistRemoteRepositoryImpl {
  _ArtistRemoteRepositoryImpl({required this.artistRemoteDataSource});

  @override
  final ArtistRemoteDataSource artistRemoteDataSource;

  Map<String, dynamic>? _getArtistCached = null;

  @override
  Future<Artist> getArtist({bool ignoreCache = false}) async {
    if (_getArtistCached == null) {
      try {
        final cachedMap =
            await PersistentStorageHolder.read('_getArtistCached');

        cachedMap.forEach((_, value) {
          if (value is! Artist) throw TypeError();
        });

        _getArtistCached = cachedMap;
      } catch (e) {
        _getArtistCached = <String, dynamic>{};
      }
    }

    final cachedValue = _getArtistCached![""];
    if (cachedValue == null || ignoreCache) {
      final Artist toReturn;
      try {
        final result = super.getArtist(ignoreCache: ignoreCache);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getArtistCached![""] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }

  @override
  Future<List<Artist>> getArtists({bool ignoreCache = false}) async {
    final cachedValue = await PersistentStorageHolder.read('_getArtistsCached');
    if (cachedValue.isEmpty && cachedValue[''] == null || ignoreCache) {
      final List<Artist> toReturn;
      try {
        final result = super.getArtists(ignoreCache: ignoreCache);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      await PersistentStorageHolder.write('_getArtistsCached', {'': toReturn});

      return toReturn;
    } else {
      try {
        return cachedValue[''].cast<Artist>();
      } on NoSuchMethodError {
        throw Exception('''
             You have to provide your generic classes with a `.cast<T>()` 
             method, if you want to store them inside a persistent storage. 
             E.g.:
             
             class MyClass<T> {
               // ...       
                       
               MyClass<S> cast<S>() {
                 return MyClass<S>();
               }
             }

            ''');
      }
    }
  }
}
