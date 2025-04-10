import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'src/twa_interface.dart';

import 'src/twa_fake.dart' if (dart.library.js) 'src/twa_web.dart';

part 'src/models/web_app_init_data.dart';
part 'src/models/web_app_init_data_unsafe.dart';
part 'src/models/web_app_user.dart';
part 'src/models/web_app_chat.dart';
part 'src/models/telegram_contact.dart';
part 'src/models/request_contact_result.dart';
part 'src/models/request_contact_result_response.dart';
part 'src/models/request_contact_result_response_unsafe.dart';
part 'src/models/location_data.dart';

part 'src/services/location_manager.dart';

final TwaInterface _platform = createTwa();

class Twa extends TwaInterface {
  Twa._();
  static final Twa instance = Twa._();

  @override
  bool get isSupported => _platform.isSupported;

  @override
  WebAppInitData get initData => _platform.initData;

  @override
  WebAppInitDataUnsafe get initDataUnsafe => _platform.initDataUnsafe;

  @override
  String get version => _platform.version;

  @override
  String get platform => _platform.platform;

  @override
  LocationManager get locationManager => _platform.locationManager;

  @override
  Future<RequestContactResult> requestContact() {
    return _platform.requestContact();
  }

  @override
  Future<bool> requestWriteAccess() {
    return _platform.requestWriteAccess();
  }

  @override
  void ready() => _platform.ready();
}
