import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Cupertino Design System

void main() {
  runApp(CupertinoExpApp());
}

class CupertinoExpApp extends StatelessWidget {
  const CupertinoExpApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        title: 'Experiment Project',
        home: Home(),
      );
    } else {
      return MaterialApp(
        home: Home(),
      );
    }
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: Icon(CupertinoIcons.arrow_up_doc),
        leading: Icon(CupertinoIcons.arrow_up),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton.filled(
            borderRadius: BorderRadius.circular(16),
            child: Text('Tap here'),
            onPressed: () {},
          ),
          CupertinoListTile(
            onTap: () {},
            title: Text('Title'),
            backgroundColor: CupertinoColors.white,
            subtitle: Text('subtitle'),
            trailing: Icon(CupertinoIcons.airplane),
          ),
          CupertinoTextField(),
          CupertinoSwitch(value: false, onChanged: (value) {})
        ],
      ),
    );
  }
}