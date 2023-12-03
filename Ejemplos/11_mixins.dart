abstract class Animal {
  
}

abstract class Mamifero extends Animal {
  
}

abstract class Ave extends Animal {
  
}

abstract class Pez extends Animal {
  
}


mixin Volador {
  void volar() => print("Estoy volando.");
}

mixin Caminante {
  void caminar() => print("Estoy caminando.");
}

mixin Nadador {
  void nadar() => print("Estoy nadando.");
}



class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final donal = Pato();
  donal.volar();
  donal.caminar();
  donal.nadar();
}