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

  @Cached(syncWrite: true)
  @override
  Future<Artist> getArtist({
    @ignoreCache bool ignoreCache = false,
  }) async {
    final response = await artistRemoteDataSource.getArtist();

    if (response.body case final dto? when response.isSuccessful) {
      return dto.toDomain();
    }

    throw Exception('Failed get artist data');
  }
}
