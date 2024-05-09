import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/controller/pokemon_controller.dart';

class PokemonPage extends StatelessWidget {
  final PokemonController _pokemonController = PokemonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pokedex',
          style: GoogleFonts.dmSans(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: _pokemonController.getPokemons().length,
        itemBuilder: (context, index) {
          final pokemon = _pokemonController.getPokemons()[index];
          Color cardColor;
          if (index < 4) {
            cardColor = pokemon.backgroundColor;
          } else {
            cardColor = pokemon.backgroundColor;
          }
          return GestureDetector(
            onTap: () => _pokemonController.showPokemonDetails(context, pokemon),
            child: Card(
              elevation: 4.0,
              color: cardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    pokemon.imageUrl,
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 7.0),
                  Text(
                    pokemon.name,
                    style: GoogleFonts.dmSans(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 7.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), 
                    child: Text(
                      pokemon.type,
                      style: GoogleFonts.dmSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: pokemon.backgroundColor 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}