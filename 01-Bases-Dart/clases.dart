void main() {
  final Map<String, dynamic> rawJson = {
    "name": "Tony Stark",
    "power": "Money",
    "isAlive": true
  };

  final wolverine =
      new Hero(name: "Logan", power: "Regeneración", isAlive: true);
  final ironman = Hero.fromMap(rawJson);

  print(wolverine);
  print(wolverine.name);

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Hero( {required String name, required String power} ){
  //   this.name = name;
  //   this.power = power;
  // }

  // Hero({required String name, required String power})
  //     : name = name,
  //       power = power;

  // Hero(this.name, this.power);

  Hero({
    required this.name,
    this.power = "Sin poder",
    required this.isAlive,
  });

  Hero.fromMap(Map<String, dynamic> json)
      : name = json["name"] ?? "No name found",
        power = json["power"] ?? "No power found",
        isAlive = json["isAlive"] ?? "No isAlive found";

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? "YES!" : "NO"}';
  }
}
