import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_chores/presentation/page/artist/widget/artist_view.dart';
import 'package:lazy_chores/utils/intl_util.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.cached),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () => context.go('/'),
        ),
      ),
      body: const ArtistView(),
    );
  }
}
