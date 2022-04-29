import 'dart:developer';

import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_extra_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/components/icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forgotpassword.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isChecked = false;
  void _handleRememberme(bool? value) {
    log("Handle Remember Me");
    _isChecked = value!;
    SharedPreferences.getInstance().then(
      (prefs) {
        prefs.setBool("remember_me", value);
        prefs.setString('email', email.text);
        prefs.setString('password', password.text);
      },
    );
    setState(() {
      _isChecked = value;
    });
  }

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bgimg.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/loginimg.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      AppTextExtraBold(size: 20, text: "Create account!"),
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
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            obscureText: false,
                            controller: email,
                            focusNode: _emailNode,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                MyFlutterApp.profile,
                                size: 20,
                                color: Colors.green,
                              ),
                              hintText: "Name",
                              hintStyle: TextStyle(
                                fontFamily: "NunitoSans",
                                fontSize: 14,
                                color: Color(0xFF747688),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.green)),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Card(
                          elevation: _passwordNode.hasFocus ? 3.0 : 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            obscureText: _isObscure,
                            controller: password,
                            focusNode: _passwordNode,
                            decoration: InputDecoration(
                              // ignore: prefer_const_constructors
                              prefixIcon: Icon(
                                Icons.lock_outline_sharp,
                                color: Colors.green,
                              ),
                              suffixIcon: IconButton(
                                color: Colors.grey,
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              hintText: "Your password",
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF747688),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.black,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFE4DFDF),
                                  )),
                              errorBorder: const OutlineInputBorder(
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
                      const SizedBox(
                        height: 37,
                      ),
                      AppButton(
                          btnName: "Sign UP",
                          onPressed: () => Container(),
                          width: 247),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextSemiBold(
                              size: 14, text: "Already have an account?"),
                          AppTextSemiBold(
                            size: 14,
                            text: "Sign In here",
                            color: Colors.green,
                          )
                        ],
                      ),
                    ]),
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
