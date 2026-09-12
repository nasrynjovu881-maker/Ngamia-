enum UserRole { passenger, driver }
enum RideStatus { searching, driverAssigned, arriving, inProgress, completed, cancelled }

class AppUser {
  final String id, name, phone;
  final UserRole role;
  const AppUser({required this.id, required this.name, required this.phone, required this.role});
}

class Driver {
  final String id, name, phone, car, plate;
  final double rating;
  final bool online;
  const Driver({required this.id, required this.name, required this.phone, required this.car, required this.plate, required this.rating, required this.online});
}

class Ride {
  final String id, pickup, destination, vehicle;
  final int fare;
  RideStatus status;
  final DateTime createdAt;
  Driver? driver;
  Ride({required this.id, required this.pickup, required this.destination, required this.vehicle, required this.fare, required this.status, required this.createdAt, this.driver});
}
