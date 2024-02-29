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

  @FactoryConverter(response: _artistDataResponse)
  @Get(path: 'artists/random')
  Future<Response<ArtistDTO>> getArtist();

  @FactoryConverter(response: _artistsDataResponse)
  @Get(path: 'artists/all')
  Future<Response<List<ArtistDTO>>> getArtists();
}

Response<ArtistDTO> _artistDataResponse(Response<dynamic> response) {
  final json = jsonDecode(response.body as String) as Map<String, dynamic>;
  return response.copyWith(body: ArtistDTO.fromJson(json));
}

Response<List<ArtistDTO>> _artistsDataResponse(Response<dynamic> response) {
  final List<Map<String, dynamic>> json =
      List<Map<String, dynamic>>.from(jsonDecode(response.body as String) as List<dynamic>);
  return response.copyWith(body: json.map((element) => ArtistDTO.fromJson(element)).toList());
}
