class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({required this.model, required this.distance, required this.fuelCapacity, required this.pricePerHour});

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'] ?? '', // Ensure it's a String
      distance: (map['distance'] is num) ? (map['distance'] as num).toDouble() : 0.0,
      fuelCapacity: (map['fuelCapacity'] is num) ? (map['fuelCapacity'] as num).toDouble() : 0.0,
      pricePerHour: (map['pricePerHour'] is num) ? (map['pricePerHour'] as num).toDouble() : 0.0,
    );
  }

}