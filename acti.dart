// CLASE ABSTRACTA PRINCIPAL
abstract class Animal {}

// HERENCIA
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}


// MIXINS
mixin Caminar {
  void caminar() => print('Estoy caminando');
}

mixin Nadar {
  void nadar() => print('Estoy nadando');
}

mixin Volar {
  void volar() => print('Estoy volando');
}


// CLASES CON MIXINS

class Delfin extends Mamifero with Nadar {}

class Murcielago extends Mamifero with Caminar, Volar {}

class Gato extends Mamifero with Caminar {}

class Paloma extends Ave with Caminar, Volar {}

class Pato extends Ave with Caminar, Volar, Nadar {}

class Tiburon extends Pez with Nadar {}


// MAIN PARA PROBAR
void main() {

  final delfin = Delfin();
  delfin.nadar();

  final gato = Gato();
  gato.caminar();

  final pato = Pato();
  pato.volar();
  pato.caminar();
  pato.nadar();
}