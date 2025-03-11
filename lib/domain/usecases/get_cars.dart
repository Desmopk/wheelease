import 'package:wheelease/data/models/car.dart';
import 'package:wheelease/domain/repositories/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}