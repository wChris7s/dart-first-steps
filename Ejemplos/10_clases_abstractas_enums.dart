void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy.');
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear("Nuclear"),
  wind("Wind"),
  water("Water");
  
  final String name;
  
  const PlantType(this.name);
  
  @override
  String toString() {
    return name;
  }
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
}

// Más general.
class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Más especifico.
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}