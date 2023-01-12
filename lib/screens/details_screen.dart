import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [_CustomAppBar()],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.all(0),
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black26,
            child: const Text(
              'movie.title',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/500x300'),
            fit: BoxFit.cover,
          )),
    );
  }
}
