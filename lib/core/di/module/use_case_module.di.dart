import 'package:injectable/injectable.dart';
import 'package:lazy_chores/domain/use_case/artist/get_artist.dart';

@module
abstract class UseCaseModule {

  @injectable
  GetArtist get getArtists;
}
