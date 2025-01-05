import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

/// Aspect Ratio | Expanded | Flexible | FractionallySizedBox

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (BuildContext context) => SimpleApp(),
    ),
  );
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/profile': (context) => Profile(),
      //   '/settings': (context) => Settings(),
      // },
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      // body: FractionallySizedBox(
      //   heightFactor: 0.5,
      //   widthFactor: 0.75,
      //   alignment: Alignment(0, 0),
      //   child: ColoredBox(color: Colors.red),
      // ),
      // body: AspectRatio(
      //   aspectRatio: 16 / 9,
      //   child: ColoredBox(color: Colors.orange),
      // ),
/*      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: SizedBox(
              width: double.maxFinite,
              height: 100,
              child: ColoredBox(color: Colors.black),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.maxFinite,
              height: 100,
              child: ColoredBox(color: Colors.orange),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: ColoredBox(color: Colors.red),
          ),
          // ColoredBox(color: Colors.orange),
        ],
      ),*/
      body: SafeArea(
        top: true,
        bottom: false,
        child: Tooltip(
          message: 'This is a row',
          exitDuration: Duration(seconds: 2),
          triggerMode: TooltipTriggerMode.tap,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}