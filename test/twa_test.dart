// import 'package:flutter_test/flutter_test.dart';
// import 'package:twa/twa.dart';
// import 'package:twa/twa_interface.dart';
// import 'package:twa/twa_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockTwaPlatform
//     with MockPlatformInterfaceMixin
//     implements TwaPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final TwaPlatform initialPlatform = TwaPlatform.instance;

//   test('$MethodChannelTwa is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelTwa>());
//   });

//   test('getPlatformVersion', () async {
//     Twa twaPlugin = Twa();
//     MockTwaPlatform fakePlatform = MockTwaPlatform();
//     TwaPlatform.instance = fakePlatform;

//     expect(await twaPlugin.getPlatformVersion(), '42');
//   });
// }
