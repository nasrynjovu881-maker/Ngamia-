# Ngamia 🐪 — Flutter Ride-Hailing App

This package upgrades the original MVP into a structured, runnable Flutter application with passenger and driver flows.

## Included
- Passenger login flow (demo)
- Driver login flow (demo)
- Passenger booking screen
- Vehicle selection and fare estimate
- Ride request and assigned driver screen
- Ride history
- Passenger profile
- SOS/safety placeholder
- Driver online/offline mode
- Incoming trip screen
- Driver earnings and withdrawal placeholder
- Driver profile/vehicle screen
- Local app state and service layer
- Android project skeleton

## Important
This is a complete **app source project / functional demo**, but it is not yet a production ride-hailing service. Real production features require external services and credentials:

- Firebase/Auth or a secure backend + database
- Google Maps/Mapbox API key
- Real GPS/background location
- Real-time WebSocket/Firebase trip tracking
- OTP/SMS provider
- M-Pesa/Airtel Money/Tigo Pesa/payment gateway
- Push notifications
- Driver KYC/document verification
- Admin dashboard and dispatch/matching server
- Terms, privacy policy, safety and Play Store compliance

## Build
Install Flutter SDK, then from this folder:

```bash
flutter pub get
flutter run
flutter build appbundle --release
```

The Play Store upload artifact is normally generated at:
`build/app/outputs/bundle/release/app-release.aab`

## Package name
`com.ngamia.app`
