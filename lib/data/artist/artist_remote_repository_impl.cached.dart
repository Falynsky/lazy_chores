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
      final cachedMap =
          await PersistentStorageHolder.read('_getArtistssCached');

      cachedMap.forEach((_, value) {
        if (value is! List<Artist>) throw TypeError();
      });

      _getArtistssCached = cachedMap;
    } catch (e) {
      _getArtistssCached = <String, dynamic>{};
    }

    _completer.complete();
  }

  @override
  final ArtistRemoteDataSource artistRemoteDataSource;
  final _completer = Completer<void>();
  Future<void> get _completerFuture => _completer.future;

  Map<String, dynamic>? _getArtistCached = null;

  late final Map<String, dynamic> _getArtistssCached;

  @override
  Future<Artist> getArtist() async {
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
    if (cachedValue == null) {
      final Artist toReturn;
      try {
        final result = super.getArtist();

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
  Future<List<Artist>> getArtists() async {
    final cachedValue = await PersistentStorageHolder.read('_getArtistsCached');
    if (cachedValue.isEmpty && cachedValue[''] == null) {
      final List<Artist> toReturn;
      try {
        final result = super.getArtists();

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
  Future<List<Artist>> getArtistss() async {
    await _completerFuture;

    final cachedValue = _getArtistssCached[""];
    if (cachedValue == null) {
      final List<Artist> toReturn;
      try {
        final result = super.getArtistss();

        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {}

      _getArtistssCached[""] = toReturn;

      await PersistentStorageHolder.write(
          '_getArtistssCached', _getArtistssCached);

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
