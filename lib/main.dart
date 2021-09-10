// @dart=2.9
import 'package:flutter/material.dart';
import 'SplashPage.dart';
import 'package:camera/camera.dart';


List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MiMacho - Eyes For The Blind',
      home:  SplashPage(),
    );
  }
}
