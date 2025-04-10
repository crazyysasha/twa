part of '../../twa.dart';

final class LocationManager {
  final bool isInited;

  final bool isLocationAvailable;

  final bool isAccessRequested;

  final bool isAccessGranted;

  final Future<void> Function() init;

  final Future<LocationData?> Function() getLocation;

  final void Function() openSettings;

  LocationManager({
    required this.isInited,
    required this.isLocationAvailable,
    required this.isAccessRequested,
    required this.isAccessGranted,
    required this.init,
    required this.getLocation,
    required this.openSettings,
  });

  @override
  String toString() {
    return "LocationManager(isInited: $isInited, isLocationAvailable: "
        "$isLocationAvailable, isAccessRequested: $isAccessRequested, "
        "isAccessGranted: $isAccessGranted)";
  }
}
