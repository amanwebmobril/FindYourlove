import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:flutter/material.dart';

import '../../../components/helpers/appcolor.dart';

class AddMedia extends StatefulWidget {
  const AddMedia({Key? key}) : super(key: key);

  @override
  State<AddMedia> createState() => _AddMediaState();
}

class _AddMediaState extends State<AddMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#B0CB56"),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4.5,
              ),
              AppText_bold(
                size: 21,
                text: "Add Media",
                color: Colors.white,
              ),
            ],
          ))),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            AppTextSemiBold(
              size: 18,
              text: "Your uploads and add more!",
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370, left: 26, right: 250),
              child: Container(
                  padding: const EdgeInsets.only(
                      right: 9, left: 9, top: 10, bottom: 10),
                  height: 155,
                  width: 104,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(children: [
                    Container(
                      height: 155,
                      width: 104,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/dottedborder.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 155,
                      width: 104,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 48, left: 3),
                        child: Column(children: [
                          SizedBox(
                              height: 26,
                              width: 26.67,
                              child: Image.asset("assets/uploadcam.png")),
                          const SizedBox(
                            height: 12,
                          ),
                          AppText(
                            size: 10,
                            text: "Take a picture",
                            color: HexColor("#2D5F2E"),
                          )
                        ]),
                      ),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
