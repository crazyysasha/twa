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
}
