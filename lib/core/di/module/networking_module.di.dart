import 'package:injectable/injectable.dart';
import 'package:lazy_chores/data/artist/client/artist_api_client.dart';
import 'package:lazy_chores/data/networking/interceptor/accept_json_content_type_interceptor.dart';

@module
abstract class NetworkingModule {

  @injectable
  AcceptJsonContentTypeInterceptor get acceptJsonContentTypeInterceptor;
  
  @lazySingleton
  ArtistApiClient get artistApiClient;

  // services

  @singleton
  @Named(artistApiClientBaseUrl)
  String get organizationApiClientBaseUrlDev {
    return 'http://10.12.140.41:3000';
  }
}
