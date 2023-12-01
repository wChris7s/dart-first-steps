void main() {
  final numbers = [1,2,3,3,4,5,5,6,2,9,12,10];
  
  print('Lista Original: $numbers');
  print('Length: ${numbers.length}');
  print('Firs: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}\n');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}\n');
  
  final numbersGreaterThan5 = numbers.where( (int num) => num > 5);
  print('>5 Iterable: $numbersGreaterThan5');
}