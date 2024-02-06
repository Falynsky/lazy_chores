import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:lazy_chores/data/networking/client/api_client.dart';
import 'package:lazy_chores/data/networking/interceptor/accept_json_content_type_interceptor.dart';

const artistApiClientBaseUrl = 'artistApiClientBaseUrl';

final class ArtistApiClient extends ApiClient {
  ArtistApiClient({
    @Named(artistApiClientBaseUrl) required super.baseUrl,
    required AcceptJsonContentTypeInterceptor acceptJsonContentTypeInterceptor,
  }) : super(
          converter: const JsonConverter(),
          interceptors: [acceptJsonContentTypeInterceptor],
        );
}
