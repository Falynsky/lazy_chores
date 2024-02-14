// ignore_for_file: prefer_const_constructors

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_chores/domain/use_case/artist/get_artist.dart';
import 'package:lazy_chores/presentation/page/artist/bloc/artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit(
    this._getArtist,
  ) : super(ArtistStateLoading());

  final GetArtist _getArtist;

  Future<void> getArtist() async {
    emit(ArtistStateLoading());
    final artist = await _getArtist();
    emit(ArtistStateLoaded(artist));
  }
}
