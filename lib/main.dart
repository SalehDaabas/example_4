import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:example_4/pages/HomePage.dart';
import 'package:example_4/pages/Camera.dart';


Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (context) => HomePage(),
        '/Camera': (context) => TakePictureScreen(camera: firstCamera),
      },

    ),
  );
}