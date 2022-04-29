import 'dart:developer';

import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_extra_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/features/auth/design/register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forgotpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          height: 800,
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
                  padding: const EdgeInsets.only(top: 250.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: [
                      AppTextExtraBold(size: 20, text: "WELCOME BACK!"),
                      AppText(
                          size: 18,
                          text: 'Use your credentials below and login'),
                      AppText(size: 18, text: 'to your account'),
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
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.black,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                      const SizedBox(
                        height: 20,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: [
                                    Checkbox(
                                        activeColor: Colors.green,
                                        splashRadius: 20,
                                        value: _isChecked,
                                        onChanged: _handleRememberme),
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: AppText(
                                        text: "Remember Me",
                                        color: const Color(0xFF120D26),
                                        size: 14,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPassword()))
                                },
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: AppText(
                                    text: "Forgot Password?",
                                    size: 12,
                                    color: Colors.green,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      AppButton(
                          btnName: "Signin",
                          onPressed: () => Container(),
                          width: 247),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextSemiBold(
                              size: 14, text: "Don't have an account? "),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage())),
                            child: AppTextSemiBold(
                              size: 14,
                              text: "Sign Up here",
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Center(
                          child: AppTextSemiBold(
                              color: Colors.white,
                              size: 14,
                              text: "Sign In With")),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                          )
                        ],
                      )
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
