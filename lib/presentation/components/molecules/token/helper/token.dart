class Token {
  final String name;
  final String type;
  final String? keywords;
  final String color;
  final int power;
  final int toughness;

  Token({
    required this.name,
    required this.type,
    required this.color,
    required this.power,
    required this.toughness,
    this.keywords,
  });

  // Tokens pré definidas
  factory Token.faerie() => Token(
    name: 'Faerie',
    type: 'Token Creature - Faerie',
    keywords: 'Fly',
    color: 'Blue',
    power: 1,
    toughness: 1,
  );

  factory Token.goblin() => Token(
    name: 'Goblin',
    type: 'Token Creature - Goblin',
    color: 'Red',
    power: 1,
    toughness: 1,
  );
}
