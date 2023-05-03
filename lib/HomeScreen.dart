import 'dart:async';

import 'package:elementos02_05_23/Pages/AnimatedTextKit.dart';
import 'package:elementos02_05_23/Pages/EmailValidatorPage.dart';
import 'package:elementos02_05_23/Pages/FlutterEasyLoadin.dart';
import 'package:elementos02_05_23/Pages/PhotoViewCustom.dart';
import 'package:elementos02_05_23/Pages/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? _timer;
  late double _progress;

  @override
  void initState() {
    super.initState();
    EasyLoading.addStatusCallback((status) {
      print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
    EasyLoading.showSuccess('Use in initState');
    // EasyLoading.removeCallbacks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => VideoPlayer()),
                );
              },
              child: const Text('Video Player'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PhotoViewCustom()),
                );
              },
              child: const Text('PhotoView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AnimatedText()),
                );
              },
              child: const Text('Animated Text Kit'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FlutterEasyLoadin()),
                );
              },
              child: const Text('Flutter Easy Loading'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EmailValidatorPage()),
                );
              },
              child: const Text('Email Validator'),
            ),
          ],
        ),
      ),
    );
  }
}