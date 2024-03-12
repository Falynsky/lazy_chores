import 'package:injectable/injectable.dart';
import 'package:lazy_chores/domain/feature/artist/artist_remote_repository.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

@injectable
final class GetArtist {
  GetArtist(this._cachedRemoteRepository);

  final ArtistRemoteRepository _cachedRemoteRepository;

  Future<Artist> call() async {
    return await _cachedRemoteRepository.getArtist();
  }
}
