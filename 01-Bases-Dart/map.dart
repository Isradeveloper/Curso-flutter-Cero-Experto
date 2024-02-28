void main() {
  final pokemon = {
    "name": "Pikachu",
    "hp": 100,
    "isAlive": true,
    "abilities": <String>["impostor"],
    "sprites": {
      1: "pikachu/front.png",
      2: "pikachu/back.png",
    }
  };

  print(pokemon);
  print('Name: ${pokemon["name"]}');
  print('Images: ${pokemon["sprites"]}');

  print('Back: ${pokemon["sprites"][2]}');
  print('Front: ${pokemon["sprites"][1]}');

}
