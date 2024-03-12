import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

abstract interface class ArtistRemoteRepository {
  Future<Artist> getArtist();
  Future<List<Artist>> getArtistss();
  Future<List<Artist>> getArtists();
}
