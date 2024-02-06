import 'package:injectable/injectable.dart';
import 'package:lazy_chores/data/artist/artist_remote_repository_impl.dart';
import 'package:lazy_chores/domain/feature/artist/artist_remote_repository.dart';

@module
abstract class RepositoryModule {
  @LazySingleton(as: ArtistRemoteRepository)
  ArtistRemoteRepositoryImpl get artistRemoteRepositoryImpl;
}
