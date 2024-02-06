import 'package:chopper/chopper.dart';

base class ApiClient extends ChopperClient {
  ApiClient({
    required String baseUrl,
    List<RequestInterceptor> interceptors = const [],
    super.converter,
  }) : super(
          baseUrl: Uri.parse(baseUrl),
          interceptors: [
            ...interceptors,
          ],
        );
}
