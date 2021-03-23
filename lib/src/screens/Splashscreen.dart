import 'package:flutter/material.dart';
import 'Login.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initData().then((value) => navigateToHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Scaffold(
              backgroundColor: Colors.lightBlue[600],
              body: Center(
                child: Image.asset(
                  "assets/image/dogAndCat.png",
                  height: 150,
                ),
              ),
            )),
      ),
    ]);
  }

  Future initData() async => await Future.delayed(
        Duration(
          seconds: 4,
        ),
      );

  /// Navigate to Home screen.
  void navigateToHomeScreen() => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        ),
      );
}
