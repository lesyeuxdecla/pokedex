import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final String type;
  final String description;
  final int pokedexNumber;
  final List<String> abilities;
  final String imageUrl;
  final Color backgroundColor;

  Pokemon({
    required this.name,
    required this.type,
    required this.description,
    required this.pokedexNumber,
    required this.abilities,
    required this.imageUrl,
    required this.backgroundColor
  });
}
