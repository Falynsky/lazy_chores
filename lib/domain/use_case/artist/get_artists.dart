import 'package:connecteo/connecteo.dart';
import 'package:lazy_chores/core/di/di_config.dart';
import 'package:lazy_chores/domain/feature/artist/artist_remote_repository.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

final class GetArtists {
  GetArtists(this._cachedRemoteRepository);

  final ArtistRemoteRepository _cachedRemoteRepository;

  Future<List<Artist>> call() async {
    final baseUrl = getIt<String>(instanceName: 'artistApiClientBaseUrl');
    final connecteo = ConnectionChecker(
      baseUrlLookupAddress: baseUrl,
    );
    final hasInternetConnection = await connecteo.isConnected;
    if (!hasInternetConnection) {
      throw Exception('No internet connection');
    }

    return await _cachedRemoteRepository.getArtists();
  }
}

class MyHostReachabilityChecker extends HostReachabilityChecker {
  @override
  Future<bool> canReachAnyHost({
    List<ConnectionEntry>? connectionEntries,
    Duration? timeout,
  }) async {
    return true;
  }

  @override
  Future<bool> hostLookup({required String baseUrl}) async {
    return true;
  }
}
