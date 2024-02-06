import 'package:injectable/injectable.dart';
import 'package:lazy_chores/data/artist/artist_remote_data_source.dart';
import 'package:lazy_chores/data/artist/client/artist_api_client.dart';

@module
abstract class DataSourceModule {

  @lazySingleton
  ArtistRemoteDataSource artistRemoteRepository(ArtistApiClient client) => ArtistRemoteDataSource.create(client);
}
