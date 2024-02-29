import 'package:cached_annotation/cached_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lazy_chores/data/artist/artist_remote_data_source.dart';
import 'package:lazy_chores/domain/feature/artist/artist_remote_repository.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

part 'artist_remote_repository_impl.cached.dart';

@withCache
abstract mixin class ArtistRemoteRepositoryImpl implements ArtistRemoteRepository, _$ArtistRemoteRepositoryImpl {
  @factoryMethod
  factory ArtistRemoteRepositoryImpl({
    required ArtistRemoteDataSource artistRemoteDataSource,
  }) = _ArtistRemoteRepositoryImpl;

  @Cached(persistentStorage: true)
  @override
  Future<Artist> getArtist({
    @ignoreCache bool ignoreCache = false,
  }) async {
    final response = await artistRemoteDataSource.getArtist();
    return response.body!.toDomain();
  }

  @LazyPersistentCached()
  @override
  Future<List<Artist>> getArtists({
    @ignoreCache bool ignoreCache = false,
  }) async {
    final response = await artistRemoteDataSource.getArtists();
    return response.body!.map((e) => e.toDomain()).toList();
  }

  @override
  @PersistentCached(initOnCall: true)
  Future<List<Artist>> getArtistsPersistent({
    @ignoreCache bool ignoreCache = false,
  }) async {
    final response = await artistRemoteDataSource.getArtists();
    return response.body!.map((e) => e.toDomain()).toList();
  }
}
