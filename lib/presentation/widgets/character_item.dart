import 'package:breaking_bad/constants/my_colors.dart';
import 'package:breaking_bad/data/models/character.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.hardEdge,
      child: GridTile(
        child: Container(
          color: MyColors.myGrey.withOpacity(0.5),
          child: character.image.isNotEmpty
              ? FadeInImage.assetNetwork(
                  placeholder: 'assets/images/empty.jpg',
                  image: character.image,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/images/empty.jpg'),
        ),
        footer: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.black45,
          child: Text(
            character.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
