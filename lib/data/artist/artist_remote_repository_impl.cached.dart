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

  final _getArtistSync = <String, Future<Artist>>{};

  final _getArtistCached = <String, Artist>{};

  @override
  Future<Artist> getArtist({bool ignoreCache = false}) async {
    final cachedValue = _getArtistCached[""];
    if (cachedValue == null || ignoreCache) {
      final cachedFuture = _getArtistSync[""];

      if (cachedFuture != null) {
        return cachedFuture;
      }

      final Artist toReturn;
      try {
        final result = super.getArtist(ignoreCache: ignoreCache);
        _getArtistSync[""] = result;
        toReturn = await result;
      } catch (_) {
        rethrow;
      } finally {
        _getArtistSync.remove('');
      }

      _getArtistCached[""] = toReturn;

      return toReturn;
    } else {
      return cachedValue;
    }
  }
}
