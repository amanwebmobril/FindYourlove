// ignore: file_names
import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/components/icons.dart';
import 'package:findyourlove/features/profileSetup/design/uploadPhoto.dart';
import 'package:flutter/material.dart';

class PresonalInformation extends StatefulWidget {
  const PresonalInformation({Key? key}) : super(key: key);

  @override
  State<PresonalInformation> createState() => _PresonalInformationState();
}

class _PresonalInformationState extends State<PresonalInformation> {
  bool maleSelected = true;
  bool femaleSelected = true;
  bool othersSelected = true;
  double _currentSliderHeight = 0;
  double _currentSliderWeight = 0;
  double feet = 0;

  @override
  Widget build(BuildContext context) {
    int kg = _currentSliderWeight.toInt();
    double pound = _currentSliderWeight * 2.205;
    int _pound = pound.toInt();
    int cm = _currentSliderHeight.toInt();
    double feet = _currentSliderHeight / 30.48;
    return Scaffold(
        backgroundColor: HexColor("#B0CB56"),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(35),
            child: Center(
                child: AppText_bold(
              size: 20,
              text: "Presonal Information",
              color: Colors.white,
            ))),
        body: SafeArea(
          child: Container(
            color: HexColor("#B0CB56"),
            height: double.maxFinite,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  AppText(
                    size: 18,
                    text: "Date of Birth",
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 43,
                        width: 325,
                        decoration: BoxDecoration(
                            color: HexColor("#87AB0A"),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppTextSemiBold(
                                  size: 16, text: "Date", color: Colors.white),
                              Container(
                                height: 19,
                                width: 2,
                                color: HexColor("#B0CB56"),
                              ),
                              AppTextSemiBold(
                                  size: 16, text: "Month", color: Colors.white),
                              Container(
                                height: 19,
                                width: 2,
                                color: HexColor("#B0CB56"),
                              ),
                              AppTextSemiBold(
                                size: 16,
                                text: "Year",
                                color: Colors.white,
                              )
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  AppText(
                    size: 18,
                    text: "Gender",
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            maleSelected = false;
                            femaleSelected = true;
                            othersSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 10, bottom: 9),
                          height: 43,
                          width: 134,
                          decoration: BoxDecoration(
                              image: maleSelected == true
                                  ? const DecorationImage(
                                      image: AssetImage(
                                          "assets/genderUnselected.png"),
                                      fit: BoxFit.fill)
                                  : const DecorationImage(
                                      image: AssetImage(
                                          "assets/genderSelected.png"),
                                      fit: BoxFit.fill),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: SizedBox(
                            height: 70,
                            width: 24,
                            child: Image.asset("assets/male.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            maleSelected = true;
                            femaleSelected = false;
                            othersSelected = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 10, bottom: 9),
                          height: 43,
                          width: 134,
                          decoration: BoxDecoration(
                              image: femaleSelected == true
                                  ? const DecorationImage(
                                      image: AssetImage(
                                          "assets/genderUnselected.png"),
                                      fit: BoxFit.fill)
                                  : const DecorationImage(
                                      image: AssetImage(
                                          "assets/genderSelected.png"),
                                      fit: BoxFit.fill),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15))),
                          child: SizedBox(
                            height: 70,
                            width: 24,
                            child: Image.asset("assets/female.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        maleSelected = true;
                        femaleSelected = true;
                        othersSelected = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 10, bottom: 9),
                      height: 43,
                      width: 134,
                      decoration: BoxDecoration(
                          image: othersSelected == true
                              ? const DecorationImage(
                                  image:
                                      AssetImage("assets/genderUnselected.png"),
                                  fit: BoxFit.fill)
                              : const DecorationImage(
                                  image:
                                      AssetImage("assets/genderSelected.png"),
                                  fit: BoxFit.fill),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: SizedBox(
                        height: 70,
                        width: 24,
                        child: Image.asset("assets/others.png"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  AppText(size: 18, text: "Country", color: Colors.white),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 43,
                        width: 325,
                        decoration: BoxDecoration(
                            color: HexColor("#87AB0A"),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppTextSemiBold(
                                  size: 16, text: "India", color: Colors.white),
                              const Icon(
                                MyFlutterApp.dropdown,
                                color: Colors.white,
                                size: 10,
                              )
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      AppText(
                        size: 18,
                        text: "Height",
                        color: Colors.white,
                      ),
                      Spacer(),
                      AppTextSemiBold(
                        size: 16,
                        text: cm.toString(),
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: " cm ",
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: "(${feet.toStringAsFixed(2)}",
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: " feet)",
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 43,
                    width: 325,
                    decoration: BoxDecoration(
                        color: HexColor("#87AB0A"),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Slider(
                      activeColor: HexColor("#B0CB56"),
                      value: _currentSliderHeight,
                      inactiveColor: Colors.white,
                      max: 300,
                      divisions: 300,
                      // label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderHeight = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      AppText(
                        size: 18,
                        text: "Weight",
                        color: Colors.white,
                      ),
                      const Spacer(),
                      AppTextSemiBold(
                        size: 16,
                        text: kg.toString(),
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: " Kg ",
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: "(${_pound.toString()}",
                        color: Colors.white,
                      ),
                      AppTextSemiBold(
                        size: 16,
                        text: " pound)",
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 43,
                    width: 325,
                    decoration: BoxDecoration(
                        color: HexColor("#87AB0A"),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Slider(
                      activeColor: HexColor("#B0CB56"),
                      value: _currentSliderWeight,
                      inactiveColor: Colors.white,
                      max: 200,
                      divisions: 200,
                      // label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderWeight = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 34),
                  Align(
                    alignment: Alignment.center,
                    child: AppButton(
                        btnName: "Save Detail",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UploadPicture())),
                        width: 247),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
