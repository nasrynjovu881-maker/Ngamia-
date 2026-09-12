import 'package:flutter/foundation.dart';
import '../models/models.dart';
import '../services/app_service.dart';

class AppState extends ChangeNotifier {
  final service = AppService.instance;
  AppUser? get user => service.currentUser;
  List<Ride> get rides => service.rides;
  bool loading = false;

  Future<void> login(String phone, UserRole role) async {
    loading = true; notifyListeners();
    await service.login(phone, role);
    loading = false; notifyListeners();
  }

  Future<Ride?> requestRide(String pickup, String destination, String vehicle, int fare) async {
    loading = true; notifyListeners();
    final r = await service.requestRide(pickup: pickup, destination: destination, vehicle: vehicle, fare: fare);
    loading = false; notifyListeners(); return r;
  }

  void cancel(Ride r) { service.cancelRide(r); notifyListeners(); }
  void complete(Ride r) { service.completeRide(r); notifyListeners(); }
  void logout() { service.currentUser = null; notifyListeners(); }
}
