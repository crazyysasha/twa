import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:twa/twa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  final _twaPlugin = Twa.instance;

  @override
  void initState() {
    _twaPlugin.ready();
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = "${_twaPlugin.isSupported}";
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('isSupported: $_platformVersion\n'),
              Text("platform: ${_twaPlugin.platform}"),
              Text("initData: ${_twaPlugin.initData}"),
              Text("initDataUnsafe: ${_twaPlugin.initDataUnsafe}"),

              ExpansionTile(
                title: const Text("LocationManager"),
                children: [
                  Text("isInited: ${_twaPlugin.locationManager.isInited}"),
                  Text("isLocationAvailable: ${_twaPlugin.locationManager.isLocationAvailable}"),
                  Text("isAccessRequested: ${_twaPlugin.locationManager.isAccessRequested}"),
                  Text("isAccessGranted: ${_twaPlugin.locationManager.isAccessGranted}"),
                  FilledButton(
                    onPressed: () async {
                      final _ = await _twaPlugin.locationManager.init();
                      print("init location manager result: ${_twaPlugin.locationManager}");
                    },
                    child: const Text("Init LocationManager"),
                  ),
                  FilledButton(
                    onPressed: () async {
                      try {
                        final result = await _twaPlugin.locationManager.getLocation();
                        print("get location result: $result");
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Text("Get Location"),
                  ),

                  FilledButton(
                    onPressed: () {
                      _twaPlugin.locationManager.openSettings();
                    },
                    child: const Text("Open Settings"),
                  ),
                ],
              ),
              ListTile(
                title: const Text("requestContact"),
                subtitle: const Text("Request contact access"),
                trailing: FilledButton(
                  onPressed: () async {
                    final result = await _twaPlugin.requestContact();
                    print("request contact result: ${result.response?.contact}");
                  },
                  child: Text("Request"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: () async {
                final result = await _twaPlugin.requestContact();

                print("result: $result");
              },
              tooltip: 'Request Contact',
              child: const Icon(Icons.add),
            ),

            FloatingActionButton(
              onPressed: () async {
                final result = await _twaPlugin.requestWriteAccess();

                print("result: $result");
              },
              tooltip: 'Request Write Access',
              child: const Icon(Icons.add),
            ),

            FloatingActionButton(
              onPressed: () async {
                await _twaPlugin.locationManager.init();
                print('LocationManager: ${_twaPlugin.locationManager}');
              },
              tooltip: 'Request Write Access',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
