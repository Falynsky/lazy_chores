import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:lazy_chores/presentation/page/artist/bloc/artist_cubit.dart';
import 'package:lazy_chores/presentation/page/artist/bloc/artist_state.dart';

class ArtistView extends HookWidget {
  const ArtistView({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    final cubit = useBloc<ArtistCubit>();
    final state = useBlocBuilder(cubit);

    useEffect(
      () {
        cubit.getArtists();
        return null;
      },
      [cubit],
    );

    return switch (state) {
      ArtistStateLoading() => const Center(child: CircularProgressIndicator()),
      ArtistStateLoaded() => Column(
          children: [
            Text('${state.artist.name} : ${counter.value}'),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () => counter.value++,
            ),
          ],
        )
    };
  }
}
