import 'package:json_annotation/json_annotation.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

part 'artist_dto.dt.g.dart';

@JsonSerializable()
class ArtistDTO {
  ArtistDTO({
    required this.id,
    required this.name,
  });

  factory ArtistDTO.fromJson(Map<String, dynamic> json) => _$ArtistDTOFromJson(json);

  final int id;
  final String name;

  Artist toDomain() => Artist(
        id: id,
        name: name,
      );
}
