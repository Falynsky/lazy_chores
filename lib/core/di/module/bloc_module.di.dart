import 'package:injectable/injectable.dart';
import 'package:lazy_chores/presentation/page/artist/bloc/artist_cubit.dart';

@module
abstract class BlocModule {

@injectable
ArtistCubit get artistCubit;

}
