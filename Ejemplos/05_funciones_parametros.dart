void main() {
  print(greetEveryOne());
  print(greetEveryOneLambda());
  print(addTwoNumbers(5, 10));
  print(addTwoNumbersLambda(8,10));
  print(addTwoNumbersOptional(8));
  
  print(greetPerson(name: "Chris"));
  print(greetPerson(name: "Chris", message: "Hello"));
}

String greetEveryOne() {
  return "Hello Everyone";
}

String greetEveryOneLambda() => "Hello Everyone";

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b;


int addTwoNumbersOptional(int a, [int b = 0]) {
  // b ?? = 0;
  return a + b;
}

// Opcionales y parametros por nombre.
String greetPerson({required String name, String message = 'Hola'}) {
  // required: obliga a proporcionar el parametro
  return '$message, $name';
}