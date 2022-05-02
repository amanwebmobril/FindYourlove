import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/button.dart';
import 'package:findyourlove/features/auth/design/login.dart';
import 'package:flutter/material.dart';

import '../../../components/apptext.dart';
import '../../../components/helpers/appcolor.dart';

// ignore: camel_case_types
class resetPassword extends StatefulWidget {
  const resetPassword({Key? key}) : super(key: key);

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

// ignore: camel_case_types
class _resetPasswordState extends State<resetPassword> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmPasswordNode = FocusNode();
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
                        AppTextSemiBold(size: 20, text: "Change Password"),
                        const SizedBox(height: 5),
                        AppText(
                          size: 18,
                          text: 'Reset your password.',
                          color: HexColor("#878787"),
                        ),
                        const SizedBox(
                          height: 25,
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
                                hintText: "Your new password",
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
                            elevation:
                                _confirmPasswordNode.hasFocus ? 3.0 : 0.0,
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
                                    _confirmpasswordvalid !=
                                        passwordController) {
                                  return 'Enter the same password as above';
                                }
                                return null;
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
                                    builder: (context) => const LoginPage())),
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
