import 'dart:ui';

import 'package:twa/src/models/safe_area_inset.dart';

import '../twa.dart';

abstract class TwaInterface {
  bool get isSupported;

  WebAppInitData get initData;

  WebAppInitDataUnsafe get initDataUnsafe;

  String get version;

  String get platform;

  SafeAreaInset get safeAreaInset;

  SafeAreaInset get contentSafeAreaInset;

  BackButton get backButton;

  LocationManager get locationManager;

  HapticFeedback get hapticFeedback;

  Future<RequestContactResult> requestContact();

  Future<bool> requestWriteAccess();

  void disableVerticalSwipes();

  void requestFullscreen();

  void exitFullscreen();

  void ready();

  void close();

  double get viewportHeight;

  double get viewportStableHeight;

  VoidCallback onViewportChanged(Function() callback);

  Future<bool> shareMessage(String messageId);

  void shareToStory(String mediaUrl, [StoryShareParams? params]);

  void openLink(String url, {bool tryInstantView = false});

  void openTelegramLink(String url, {bool forceRequest = false});

  void showScanQrPopup(String text, [Function(String result)? test]);

  void closeScanQrPopup();
}
