import '../twa.dart';

abstract class TwaInterface {
  bool get isSupported;

  WebAppInitData get initData;

  WebAppInitDataUnsafe get initDataUnsafe;

  String get version;

  String get platform;

  LocationManager get locationManager;

  Future<RequestContactResult> requestContact();

  Future<bool> requestWriteAccess();

  void disableVerticalSwipes();

  void requestFullscreen();

  void exitFullscreen();

  void ready();
}
