import '../models/models.dart';

class AppService {
  static final AppService instance = AppService._();
  AppService._();

  AppUser? currentUser;
  final List<Ride> rides = [];
  int driverBalance = 128500;

  final Driver demoDriver = const Driver(
    id: 'D001', name: 'Juma M.', phone: '+255700000001', car: 'Toyota Premio', plate: 'T 123 ABC', rating: 4.9, online: true,
  );

  Future<AppUser> login(String phone, UserRole role) async {
    await Future.delayed(const Duration(milliseconds: 600));
    currentUser = AppUser(id: role == UserRole.driver ? 'D001' : 'P001', name: role == UserRole.driver ? 'Juma Driver' : 'Mtumiaji wa Ngamia', phone: phone, role: role);
    return currentUser!;
  }

  Future<Ride> requestRide({required String pickup, required String destination, required String vehicle, required int fare}) async {
    await Future.delayed(const Duration(seconds: 2));
    final ride = Ride(id: 'R${DateTime.now().millisecondsSinceEpoch}', pickup: pickup, destination: destination, vehicle: vehicle, fare: fare, status: RideStatus.driverAssigned, createdAt: DateTime.now(), driver: demoDriver);
    rides.insert(0, ride);
    return ride;
  }

  Future<void> cancelRide(Ride ride) async {
    ride.status = RideStatus.cancelled;
  }

  Future<void> completeRide(Ride ride) async {
    ride.status = RideStatus.completed;
    if (currentUser?.role == UserRole.driver) driverBalance += (ride.fare * .8).round();
  }
}
