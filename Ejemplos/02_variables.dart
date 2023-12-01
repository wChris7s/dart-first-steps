void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png'];
  
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = {1,2,3};
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}