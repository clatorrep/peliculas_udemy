import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cine'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Tarjetas principales
            CardSwiper(),
            // Sliders de películas
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}
