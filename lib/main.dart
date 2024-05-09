import 'package:flutter/material.dart';
import 'package:pokedex/ui/pages/pokemonpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      home: PokemonPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
