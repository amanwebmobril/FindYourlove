import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_extra_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:flutter/material.dart';

class Match123 extends StatefulWidget {
  const Match123({Key? key}) : super(key: key);

  @override
  State<Match123> createState() => _Match123State();
}

class _Match123State extends State<Match123> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#B0CB56"),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 71, left: 15, right: 5),
              child: SizedBox(
                child: Image.asset("assets/background_image.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 238, left: 59, right: 59),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    AppTextExtraBold(
                      size: 24,
                      text: "It's a match!🎉",
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    AppText(
                      size: 14,
                      text: "You and Leslie have liked each other",
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          decoration: const BoxDecoration(),
                          child: Image.asset("assets/itsmatch_pc.png"),
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          decoration: const BoxDecoration(),
                          child: Image.asset("assets/itsmatch_pc1.png"),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.22,
                    ),
                    AppButton(
                        btnName: "Start Chart", onPressed: () {}, width: 247),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextSemiBold(
                      size: 12,
                      text: "Keep Scrolling",
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
