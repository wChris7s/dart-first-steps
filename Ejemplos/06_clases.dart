void main() {
  final Hero hero1 = new Hero.empty();
  print(hero1);
  //print(hero1.name);
  //print(hero1.power);
  
  final Hero hero2 = Hero.fully("Arthas", "Caos");
  print(hero2);
  //print(hero2.name);
  //print(hero2.power);
  
  final Hero hero3 = Hero.parameters(name: "Illidan");
  print(hero3);
  //print(hero3.name);
  //print(hero3.power);
}

class Hero {
  String name;
  String power;
  
  Hero.empty() : this.name = 'Null', this.power = '-1';

  Hero.fully(this.name, this.power);
  
  Hero.parameters({required this.name, this.power = '-1'});
  
  @override
  String toString() {
    return "Hero: $name, with power $power";
  }
}

// En dart no es necesario crear las instancias con la keyword ``new``.