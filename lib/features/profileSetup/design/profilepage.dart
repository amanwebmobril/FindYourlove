import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:flutter/material.dart';

import '../../../components/helpers/appcolor.dart';

class ProfilePageSetting extends StatefulWidget {
  const ProfilePageSetting({Key? key}) : super(key: key);

  @override
  State<ProfilePageSetting> createState() => _ProfilePageSettingState();
}

class _ProfilePageSettingState extends State<ProfilePageSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#B0CB56"),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => {},
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                    ),
                    child: Icon(Icons.close, color: Colors.white),
                  )),
            ),
            SizedBox(
                height: 165,
                width: 165,
                child: Image.asset("assets/profilepic.png")),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppText_bold(
                size: 20,
                text: "Leslie Alexander, 24",
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppText(size: 12, text: "Lorem Ipsum Dolor Sit Amet."),
            ),
            const SizedBox(height: 25),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/setting.png"))),
                          child: SizedBox(
                              child: Image.asset("assets/setting1.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Settings",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 22),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    HexColor("#FD484F"),
                                    HexColor("#EE2A7B")
                                  ])),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              height: 19.5,
                              width: 20,
                              child: Image.asset("assets/add media.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Add Media",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 22),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFF3DAFFD)),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              height: 19.5,
                              width: 20,
                              child: Image.asset("assets/editprofile.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Edit Profile",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 22),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    HexColor("#FD484F"),
                                    HexColor("#EE2A7B")
                                  ])),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              height: 19.5,
                              width: 20,
                              child: Image.asset("assets/heart.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Liked You",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 22),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFFFFDB5E)),
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              height: 19.5,
                              width: 20,
                              child: Image.asset("assets/change password.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Change Password",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 22),
            Container(
              height: 55,
              width: 324,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  color: const Color(0XFF97B23C),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/setting.png"))),
                          child:
                              SizedBox(child: Image.asset("assets/logout.png")),
                        ),
                        const SizedBox(width: 15),
                        AppTextSemiBold(
                          size: 15,
                          text: "Logout",
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
