import 'package:twa/src/models/safe_area_inset.dart';

import '../twa.dart';

import 'twa_interface.dart';

TwaInterface createTwa() {
  return TwaFake();
}

class TwaFake extends TwaInterface {
  TwaFake();
  @override
  bool get isSupported {
    return false;
  }

  @override
  WebAppInitData get initData => WebAppInitData.fake();

  @override
  WebAppInitDataUnsafe get initDataUnsafe => WebAppInitDataUnsafe.fake();

  @override
  String get version => "unknown";

  @override
  String get platform => 'unknown';

  @override
  SafeAreaInset get safeAreaInset =>
      const SafeAreaInset(left: 0, top: 0, right: 0, bottom: 0);

  @override
  SafeAreaInset get contentSafeAreaInset =>
      const SafeAreaInset(left: 0, top: 0, right: 0, bottom: 0);

  @override
  LocationManager get locationManager => LocationManager(
    isInited: false,
    isLocationAvailable: false,
    isAccessRequested: false,
    isAccessGranted: false,
    init: () async {},
    getLocation: () async => null,
    openSettings: () {},
  );

  @override
  Future<RequestContactResult> requestContact() async {
    return RequestContactResult.fake();
  }

  @override
  Future<bool> requestWriteAccess() {
    return Future.value(false);
  }

  @override
  void ready() {}

  @override
  void disableVerticalSwipes() {}

  @override
  void requestFullscreen() {}
  @override
  void exitFullscreen() {}

  @override
  void close() {}

  @override
  Future<bool> shareMessage(String messageId) {
    return Future.value(false);
  }

  @override
  void openLink(String url, {bool tryInstantView = false}) {}

  @override
  void openTelegramLink(String url, {bool forceRequest = false}) {}
}
