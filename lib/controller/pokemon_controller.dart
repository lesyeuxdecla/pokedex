import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/ui/pages/details.dart';

class PokemonController {
  final List<Pokemon> _pokemons = [
    Pokemon(
      name: 'Charizard',
      type: 'Fogo/Voador',
      description: ' Charizard voa pelo céu em busca de oponentes poderosos. Ele respira fogo quente que derrete até mesmo o aço..',
      pokedexNumber: 001,
      abilities: ['Brasas, Lança-chamas, Voo.'],
      imageUrl: 'assets/1charizard.png', 
      backgroundColor: Color.fromARGB(255, 251, 133, 0)
    ),

    Pokemon(
      name: 'Eevee',
      type: 'Normal',
      description: 'Eevee tem uma capacidade genética para assumir diferentes formas instantaneamente. Adapta-se a qualquer ambiente.',
      pokedexNumber: 002,
      abilities: ['Adaptabilidade, Antecipação, Fuga.'],
      imageUrl: 'assets/2Eevee.png', 
      backgroundColor: Color.fromARGB(255, 255, 183, 3)
    ),

    Pokemon(
      name: 'Squirtle',
      type: 'Água',
      description: 'Squirtle lança poderosos jatos de água com precisão incrível. Ele se esconde na concha para se proteger.',
      pokedexNumber: 003,
      abilities: ['Torrente, Mega jato de água, Jato de água.'],
      imageUrl: 'assets/3Squirtle.png', 
      backgroundColor: Color.fromARGB(255, 142, 202, 230)
    ),

    Pokemon(
      name: 'Jigglypuff',
      type: 'Normal/Fada',
      description: 'Jigglypuff canta uma canção de ninar mágica que faz os ouvintes adormecerem. Desenha rostos nos adormecidos.',
      pokedexNumber: 004,
      abilities: ['Audição, Encanto, Linda voz.'],
      imageUrl: 'assets/4jigglypuff.png', 
      backgroundColor: Color.fromARGB(255, 255,77,109)
    ),

    Pokemon(
      name: 'Bulbasaur',
      type: 'Grama/Venenoso',
      description: 'Bulbasaur carrega uma semente nas costas desde o dia em que nasceu. A semente cresce gradualmente em uma planta grande.',
      pokedexNumber: 005,
      abilities: ['Crescimento, Absorção, Bomba de semente.'],
      imageUrl: 'assets/5Bulbasaur.png', 
      backgroundColor: Color.fromARGB(255, 36, 106, 115)
    ),

    Pokemon(
      name: 'Snorlax',
      type: 'Normal',
      description: 'Snorlax é preguiçoso por natureza e gosta de dormir. Ele não se move muito por causa de seu grande apetite.',
      pokedexNumber: 006,
      abilities: ['Mente calma, Gula, Sonolência.'],
      imageUrl: 'assets/6Snorlax.png',
      backgroundColor: Color.fromARGB(255, 3,102,102)
    ),

  Pokemon(
      name: 'Gengar',
      type: 'Fantasma/Venenoso',
      description: 'Gengar é conhecido como o Pokémon das sombras. Espreita na escuridão e é capaz de se tornar intangível.',
      pokedexNumber: 007,
      abilities: ['Levitação, Sombras, Distorção.'],
      imageUrl: 'assets/7gengar.png',
      backgroundColor: Color.fromARGB(255, 157, 78, 221)
    ),

  Pokemon(
      name: 'Pikachu',
      type: 'Elétrico',
      description: 'Pikachu é um Pokémon ágil e tem uma habilidade para armazenar eletricidade em suas bochechas vermelhas. Adora ketchup.',
      pokedexNumber: 008,
      abilities: ['Estática, Raio, Choque do trovão.'],
      imageUrl: 'assets/8Pikachu.png',
      backgroundColor: Color.fromARGB(255, 255, 195, 0)
    ),
    // pokemons
  ];

   void showPokemonDetails(BuildContext context, Pokemon pokemon) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PokemonDetail(pokemon: pokemon)),
    );
  }

  List<Pokemon> getPokemons() {
    return _pokemons;
  }

  Widget buildPokemonListView(BuildContext context) {
    return ListView.builder(
      itemCount: getPokemons().length,
      itemBuilder: (context, index) {
        final pokemon = getPokemons()[index];
        return ListTile(
          title: Text(pokemon.name),
          onTap: () => showPokemonDetails(context, pokemon),
        );
      },
    );
  }
}