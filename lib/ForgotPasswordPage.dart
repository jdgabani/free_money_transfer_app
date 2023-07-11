import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/LoginPage.dart';
import 'package:free_money_transfer_app/ResetPasswordPage.dart';

import 'CommonTextFromField.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailcontroler = TextEditingController();
  String emailvalue = "jdgabani1@gmail.com";
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
                padding: const EdgeInsets.only(right: 247, top: 35),
                child: InkResponse(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
                    },
                    child: Image.asset('assets/images/Back.png')),
              ),
              SizedBox(height: height * 0.020),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/images/Ellipse 95.png'),
                  Positioned(
                      right: -26,
                      bottom: 20,
                      child: Image.asset(
                          'assets/images/undraw_forgot_password_re_hxwm (1) 1.png')),
                  Positioned(
                      left: 9,
                      top: 50,
                      child: Image.asset('assets/images/Ellipse 28.png')),
                  Positioned(
                      left: 17,
                      top: 17,
                      child: Image.asset('assets/images/Ellipse 30.png')),
                  Positioned(
                      left: 37,
                      top: 96,
                      child: Image.asset('assets/images/Ellipse 27.png')),
                ],
              ),
              SizedBox(height: height * 0.065),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff011A51),
                  ),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Set a name for your profile, here's",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.0060),
              Text(
                "the password",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.12),
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
                  obscureText: false,
                  labelText: "Email ID",
                  keyboardType: TextInputType.emailAddress,
                  controller: emailcontroler,
                  validator: (value) {
                    bool emailvalid = RegExp(
                      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$",
                    ).hasMatch(value);
                    if (emailvalid) {
                      return null;
                    } else {
                      return "enter valid Email";
                    }
                  },
                ),
              ),
              SizedBox(height: height * 0.090),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CommonButton(
                  onpressed: () {
                    if (fomkey.currentState!.validate()) {
                      if (emailvalue == emailcontroler.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPasswordPage(),
                            ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalid Email Or Passwprd"),
                          ),
                        );
                      }
                    }
                  },
                  text: "NEXT",
                  color: Color(0xffFB847C),
                ),
              ),
          ],
        ),
            )),
      ),
    );
  }
}
