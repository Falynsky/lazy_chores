import 'package:lazy_chores/domain/feature/artist/artist_remote_repository.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

final class GetArtists {
  GetArtists(this._cachedRemoteRepository);

  final ArtistRemoteRepository _cachedRemoteRepository;

  Future<List<Artist>> call() async {
    return [await _cachedRemoteRepository.getArtist()];
  }
}
