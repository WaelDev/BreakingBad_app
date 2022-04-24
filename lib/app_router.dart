import 'package:flutter/material.dart';

import 'constants/strings.dart';
import 'presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
    return null;
  }
}
