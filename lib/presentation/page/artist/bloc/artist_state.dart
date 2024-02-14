import 'package:equatable/equatable.dart';
import 'package:lazy_chores/domain/feature/artist/data/artist.dart';

sealed class ArtistState {
  const ArtistState();
}

class ArtistStateLoading extends ArtistState {}

class ArtistStateLoaded extends ArtistState with EquatableMixin {
  const ArtistStateLoaded(this.artist);

  final Artist artist;

  @override
  List<Object> get props => [artist];

  ArtistStateLoaded copyWith({
    Artist? artist,
  }) {
    return ArtistStateLoaded(
      artist ?? this.artist,
    );
  }
}
