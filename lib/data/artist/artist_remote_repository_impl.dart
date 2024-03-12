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

  @LazyPersistentCached()
  @override
  Future<Artist> getArtist() async {
    final response = await artistRemoteDataSource.getArtist();
    return response.body!.toDomain();
  }

  @DirectPersistentCached()
  @override
  Future<List<Artist>> getArtists() async {
    final response = await artistRemoteDataSource.getArtists();
    return response.body!.map((e) => e.toDomain()).toList();
  }

  @PersistentCached()
  @override
  Future<List<Artist>> getArtistss() async {
    final response = await artistRemoteDataSource.getArtists();
    return response.body!.map((e) => e.toDomain()).toList();
  }
}
