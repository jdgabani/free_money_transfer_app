import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CongratulationPage.dart';
import 'package:free_money_transfer_app/ForgotPasswordPage.dart';
import 'package:free_money_transfer_app/LoginPage.dart';

import 'CommonButton.dart';
import 'CommonTextFromField.dart';

class ResetPasswordPage extends StatefulWidget {
   ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool hidepassword = true;
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController resetpasswordcontroller = TextEditingController();
  final fomkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
              key: fomkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250,top: 35),
                    child: InkResponse(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPasswordPage()),);
                        },
                        child: Image.asset('assets/images/Back.png')),
                  ),
                  SizedBox(height: height * 0.020),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset('assets/images/Group 268.png'),
                        Positioned(
                            left: 10,
                            bottom: 20,
                            child: Image.asset('assets/images/Group 270.png')),
                        Positioned(
                            left:-2,
                            top: 26,
                            child: Image.asset('assets/images/Ellipse 28.png')),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.030),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff011A51),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.020),
                  Text(
                    "Set a name for your profile, here's",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff727E96),
                    ),
                  ),
                  SizedBox(height: height * 0.0060),
                  Text(
                    "the password",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff727E96),
                    ),
                  ),
                  SizedBox(height: height * 0.075),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CommonTextFomField(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      textInputAction: TextInputAction.next,
                      obscureText: hidepassword,
                      labelText: "New Password",
                      suffixIcon: InkResponse(
                        onTap: () {
                          setState(() {
                            hidepassword = !hidepassword;
                          });
                        },
                        child: hidepassword == false
                            ? Icon(
                          Icons.visibility_off,
                        )
                            : Icon(
                          Icons.visibility,
                        ),
                      ),
                      controller: newpasswordcontroller,
                      validator: (value) {
                        bool passwordvalid = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$",
                        ).hasMatch(value);
                        if (passwordvalid) {
                          return null;
                        } else {
                          return "enter valid password";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.042),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child:  CommonTextFomField(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      labelText: "Reset Password",
                      controller: resetpasswordcontroller,
                      validator: (value) {
                        bool passwordvalid = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$",
                        ).hasMatch(value);
                        if (passwordvalid) {
                          return null;
                        } else {
                          return "enter valid password";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.090),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child:CommonButton(
                      onpressed: () {
                        if (fomkey.currentState!.validate()) {
                          if (newpasswordcontroller.text ==
                              resetpasswordcontroller.text) {
                            setState(
                                  () {
                                showDialog(
                                  barrierColor: Colors.black87,
                                  context: context,
                                  builder: (BuildContext Context) {
                                    return LoginPage();
                                  },
                                );
                              },
                            );
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("password Is Note Same"),
                              ),
                            );
                          }
                        }
                      },
                      text: "SUBMITING",
                      color: Color(0xffFB847C),

                    ),
                  ),
                  SizedBox(height: height * 0.03),
                ],
              ),
            )
        ),
      ),
    );
  }
}
