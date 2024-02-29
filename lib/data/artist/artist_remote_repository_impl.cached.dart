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
  _ArtistRemoteRepositoryImpl({required this.artistRemoteDataSource}) {
    _init();
  }

  Future<void> _init() async {
    try {
      final cachedMap = await PersistentStorageHolder.read('_getArtistCached');

      cachedMap.forEach((_, value) {
        if (value is! Artist) throw TypeError();
      });

      _getArtistCached = cachedMap;
    } catch (e) {
      _getArtistCached = <String, dynamic>{};
    }

    _completer.complete();
  }

  @override
  final ArtistRemoteDataSource artistRemoteDataSource;
  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  late final Map<String, dynamic> _getArtistCached;

  Map<String, dynamic>? _getArtistsPersistentCached = null;

  @override
  Future<Artist> getArtist({bool ignoreCache = false}) async {
    await _completerFuture;

    final cachedValue = _getArtistCached[""];
    if (cachedValue == null || ignoreCache) {
      final Artist toReturn;
      try {
        final result = super.getArtist(ignoreCache: ignoreCache);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getArtistCached[""] = toReturn;

      await PersistentStorageHolder.write('_getArtistCached', _getArtistCached);

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

  @override
  Future<List<Artist>> getArtistsPersistent({bool ignoreCache = false}) async {
    if (_getArtistsPersistentCached == null) {
      try {
        final cachedMap =
            await PersistentStorageHolder.read('_getArtistsPersistentCached');

        cachedMap.forEach((_, value) {
          if (value is! List<Artist>) throw TypeError();
        });

        _getArtistsPersistentCached = cachedMap;
      } catch (e) {
        _getArtistsPersistentCached = <String, dynamic>{};
      }
    }

    final cachedValue = _getArtistsPersistentCached![""];
    if (cachedValue == null || ignoreCache) {
      final List<Artist> toReturn;
      try {
        final result = super.getArtistsPersistent(ignoreCache: ignoreCache);

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getArtistsPersistentCached![""] = toReturn;

      return toReturn;
    } else {
      try {
        return cachedValue.cast<Artist>();
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
