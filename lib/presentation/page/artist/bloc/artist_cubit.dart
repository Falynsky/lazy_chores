// ignore_for_file: prefer_const_constructors

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_chores/domain/use_case/artist/get_artist.dart';
import 'package:lazy_chores/domain/use_case/artist/get_artists.dart';
import 'package:lazy_chores/presentation/page/artist/bloc/artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit(
    this._getArtist,
    this._getArtists,
  ) : super(ArtistStateLoading());

  final GetArtist _getArtist;
  final GetArtists _getArtists;

  Future<void> getArtist() async {
    emit(ArtistStateLoading());
    final artist = await _getArtist();
    emit(ArtistStateLoaded(artist));
  }

  Future<void> getArtists() async {
    emit(ArtistStateLoading());
    final artist = await _getArtists();
    emit(ArtistStateLoaded(artist.last));
  }
}
