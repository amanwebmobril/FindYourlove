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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(66),
          child: Center(
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
                          builder: (context) => const PresonalInformation()),
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
          ))),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
