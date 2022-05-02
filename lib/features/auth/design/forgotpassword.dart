import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/features/auth/design/resetPassword.dart';
import 'package:flutter/material.dart';

import '../../../components/apptext.dart';
import '../../../components/helpers/appcolor.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController email = TextEditingController();
  final FocusNode _emailNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bgimg.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 145),
                  child: Container(
                    height: 534,
                    width: 375,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(76)),
                    child: Column(
                      children: [
                        const SizedBox(height: 61),
                        AppTextSemiBold(size: 20, text: "Forgot Password"),
                        const SizedBox(height: 5),
                        AppText(
                          size: 18,
                          text: 'Enter your credentials below and ',
                          color: HexColor("#878787"),
                        ),
                        AppText(
                          size: 18,
                          text: 'create your account.',
                          color: HexColor("#878787"),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Card(
                            elevation: _emailNode.hasFocus ? 3.0 : 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              obscureText: false,
                              controller: email,
                              focusNode: _emailNode,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                hintText: "abc@gmail.com",
                                hintStyle: TextStyle(
                                  fontFamily: "NunitoSans",
                                  fontSize: 14,
                                  color: Color(0xFF747688),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.black,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xFFE4DFDF),
                                    )),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1),
                                ),
                              ),
                              onTap: () => {
                                if (!currentFocus.hasPrimaryFocus)
                                  {currentFocus.unfocus()}
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        AppButton(
                            btnName: "Resest Password",
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const resetPassword())),
                            width: 247),
                        const SizedBox(height: 25),
                        GestureDetector(
                            onTap: () {},
                            child: AppTextSemiBold(
                                size: 16, text: "Didn't receive?"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
