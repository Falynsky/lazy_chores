import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:lazy_chores/data/artist/artist_dto.dt.dart';
import 'package:lazy_chores/data/artist/client/artist_api_client.dart';

part 'artist_remote_data_source.chopper.dart';

@ChopperApi()
abstract class ArtistRemoteDataSource extends ChopperService {
  static ArtistRemoteDataSource create(ArtistApiClient client) {
    return _$ArtistRemoteDataSource(client);
  }

  @FactoryConverter(response: _organizationUserDataResponse)
  @Get(path: 'artists/random')
  Future<Response<ArtistDTO>> getArtist();
}

Response<ArtistDTO> _organizationUserDataResponse(Response<dynamic> response) {
    final json = jsonDecode(response.body as String) as Map<String, dynamic>;
    return response.copyWith(body: ArtistDTO.fromJson(json));
}
