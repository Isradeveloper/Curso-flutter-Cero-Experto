void main() {
  final String pokemon = "Pikachu";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['pikachu/front.png', 'pikachu/back.png'];

  // dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = {1, 2, 3};

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
