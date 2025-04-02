import 'package:mtg_token_manager/presentation/components/molecules/token/helper/token.dart';

abstract class TokenState {
  final String name;
  final String type;
  final String? keywords;
  final String color;
  final int power;
  final int toughness;
  final bool tapped;

  TokenState({
    required this.name,
    required this.type,
    required this.color,
    required this.power,
    required this.toughness,
    required this.tapped,
    this.keywords,
  });
}

class TokenInitialState extends TokenState {
  final Token token;

  TokenInitialState({required this.token})
    : super(
        name: token.name,
        keywords: token.keywords,
        type: token.type,
        color: token.color,
        power: token.power,
        toughness: token.toughness,
        tapped: false,
      );
}

class TokenTappedState extends TokenState {
  final Token token;

  TokenTappedState({required this.token})
    : super(
        name: token.name,
        keywords: token.keywords,
        type: token.type,
        color: token.color,
        power: token.power,
        toughness: token.toughness,
        tapped: true,
      );
}
