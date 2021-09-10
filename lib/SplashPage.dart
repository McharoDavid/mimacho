import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'HomePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      navigateAfterSeconds: HomePage(),
      imageBackground: Image.asset("assets/robot2.jpeg").image,
      useLoader: true,
      loaderColor: Colors.pink,
      loadingText: Text("Loading...", style: TextStyle(color: Colors.white),),
    );
  }
}
