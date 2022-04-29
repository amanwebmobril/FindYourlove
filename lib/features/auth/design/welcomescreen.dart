import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_bold.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/features/auth/design/login.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bgimg.png"), fit: BoxFit.cover)),
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          SizedBox(
              height: 150, width: 140, child: Image.asset("assets/logo.png")),
          Stack(
            children: [
              SizedBox(
                height: 302,
                width: 172,
                child: Image.asset("assets/heartbg.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SizedBox(
                  height: 234,
                  width: 239,
                  child: Image.asset("assets/welcomeimg.png"),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Center(
              child: AppText_bold(
            text: "FIND YOUR PARTNER",
            size: 20,
          )),
          Center(
              child: AppText_bold(
            text: "WITH US!",
            size: 20,
          )),
          const SizedBox(height: 8),
          AppText(size: 16, text: "Join us and socialize with"),
          AppText(size: 16, text: " millions of people"),
          const SizedBox(height: 10),
          AppButton(
            btnName: "Continue",
            width: 178,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
