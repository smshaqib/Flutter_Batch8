import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Responsive Builder

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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        // child: ResponsiveBuilder(
        //   builder: (context, sizingInformation) {
        //     if (sizingInformation.isDesktop) {
        //       return const Text('Desktop');
        //     } else if (sizingInformation.isExtraLarge) {
        //       return const Text('ExtraLarge');
        //     } else if (sizingInformation.isLarge) {
        //       return const Text('LargeDesktop');
        //     } else if (sizingInformation.isTablet) {
        //       return const Text('Tablet');
        //     } else if (sizingInformation.isMobile) {
        //       return const Text('Mobile');
        //     } else if (sizingInformation.isWatch) {
        //       return const Text('Watch');
        //     }
        //
        //     return const Text('Unknown');
        //   }
        // ),
        child: ScreenTypeLayout.builder(
          mobile: (context) => const Text('Mobile'),
          desktop: (context) => const Text('Desktop'),
          tablet: (context) => const Text('Tablet'),
          watch: (context) => const Text('Watch'),
        ),
      ),
    );
  }
}