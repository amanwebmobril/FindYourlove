import 'package:findyourlove/features/auth/design/welcomescreen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();

    // final SharedPreferences prefs = await _prefs;

    Future.delayed(const Duration(seconds: 3), () async {

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const WelcomePage()),
          ModalRoute.withName("/Home"));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(image: DecorationImage(image:AssetImage("assets/bgimg.png"),fit:BoxFit.cover )),
      child:Center(
        child: SizedBox(
          height: 150,
          width: 140,
          child:Image.asset("assets/logo.png")
        ),
      ) ,
    );
  }
}
