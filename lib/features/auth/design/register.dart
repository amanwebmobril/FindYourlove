import 'dart:developer';

import 'package:findyourlove/components/apptext.dart';
import 'package:findyourlove/components/apptext_extra_bold.dart';
import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/components/icons.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String onlyphone;
  late String isd;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode _nameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmPasswordNode = FocusNode();
  final FocusNode _phoneNode = FocusNode();
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
                  height: 760,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/loginimg.png",
                    fit: BoxFit.fill,
                  ),
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
                          elevation: _nameNode.hasFocus ? 3.0 : 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            obscureText: false,
                            controller: nameController,
                            focusNode: _nameNode,
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
                            validator: (_fullnamevalid) {
                              if (_fullnamevalid == null ||
                                  _fullnamevalid.isEmpty) {
                                return 'Enter a valid name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Card(
                          elevation: _phoneNode.hasFocus ? 3.0 : 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(start: 10),
                                child: Image.asset(
                                  "assets/phone.png",
                                  //height: 15.69,
                                  //width: 17.63,
                                ),
                              ),
                              counterText: "",
                              hintText: "Phone Number",
                              hintStyle: const TextStyle(
                                fontFamily: "NuitoSans",
                                fontSize: 14,
                                color: Color(0xFF747688),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.green,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xFFE4DFDF),
                                  )),
                              errorBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                              focusedErrorBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.white),
                              ),
                            ),
                            onTap: () => {
                              if (!currentFocus.hasPrimaryFocus)
                                {currentFocus.unfocus()}
                            },
                            initialCountryCode: 'IN',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Card(
                          elevation: _emailNode.hasFocus ? 3.0 : 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            obscureText: false,
                            controller: emailController,
                            focusNode: _emailNode,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                MyFlutterApp.profile,
                                size: 20,
                                color: Colors.green,
                              ),
                              hintText: "Enter your email",
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
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            obscureText: _isObscure,
                            controller: passwordController,
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
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.green,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Card(
                          elevation: _confirmPasswordNode.hasFocus ? 3.0 : 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            obscureText: _isObscure,
                            controller: confirmPasswordController,
                            focusNode: _confirmPasswordNode,
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
                              hintText: "Confirm Password",
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF747688),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.green,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                            validator: (_confirmpasswordvalid) {
                              if (_confirmpasswordvalid == null ||
                                  _confirmpasswordvalid.isEmpty) {
                                return 'Enter a valid Password';
                              } else if (_confirmpasswordvalid.length < 6 &&
                                  // ignore: unrelated_type_equality_checks
                                  _confirmpasswordvalid != passwordController) {
                                return 'Enter the same password as above';
                              }
                              return null;
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
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: Center(
                                  child: SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: Image.asset("assets/facebook.png"),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: Center(
                                  child: SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: Image.asset("assets/google.png"),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white),
                                child: Center(
                                  child: SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: Image.asset("assets/Vector.png"),
                                  ),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
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
