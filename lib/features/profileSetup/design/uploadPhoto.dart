import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:findyourlove/features/profileSetup/design/personalInfo.dart';
import 'package:flutter/material.dart';

import '../../../components/apptext_bold.dart';

class UploadPicture extends StatefulWidget {
  const UploadPicture({Key? key}) : super(key: key);

  @override
  State<UploadPicture> createState() => _UploadPictureState();
}

class _UploadPictureState extends State<UploadPicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#B0CB56"),
      // appBar: PreferredSize(
      //     preferredSize: const Size.fromHeight(66),
      //     child: Center(
      //         child: Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         const SizedBox(
      //           width: 20,
      //         ),
      //         GestureDetector(
      //           onTap: () {
      //             Navigator.pushAndRemoveUntil(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => const PresonalInformation()),
      //                 (route) => false);
      //           },
      //           child: const Icon(
      //             Icons.arrow_back_ios,
      //             color: Colors.white,
      //           ),
      //         ),
      //         SizedBox(
      //           width: MediaQuery.of(context).size.width / 4.5,
      //         ),
      //         AppText_bold(
      //           size: 20,
      //           text: "Upload Photo",
      //           color: Colors.white,
      //         ),
      //       ],
      //     ))),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 339,
              width: 375,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/uploadbg.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
                height: 106,
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PresonalInformation()),
                            (route) => false);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4.5,
                    ),
                    AppText_bold(
                      size: 20,
                      text: "Upload Photo",
                      color: Colors.white,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 117, left: 75, right: 75),
              child: Container(
                  padding: const EdgeInsets.only(
                      right: 9, left: 9, top: 10, bottom: 10),
                  height: 246,
                  width: 223,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Stack(children: [
                    Container(
                      height: 226,
                      width: 205,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        "assets/uploadimgborder.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 226,
                      width: 205,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(children: [
                          SizedBox(
                              height: 55.25,
                              width: 56.67,
                              child: Image.asset("assets/uploadcam.png")),
                          const SizedBox(
                            height: 22.83,
                          ),
                          AppText_bold(
                            size: 16,
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
