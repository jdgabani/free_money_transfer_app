import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/CongratulationPage.dart';
import 'package:free_money_transfer_app/LoginPage.dart';

import 'CommonTextFromField.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isvisiblity = false;
  bool hidepassword = true;
  String emailvalue = "jdgabani1@gmail.com";
  final fomkey = GlobalKey<FormState>();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController namecontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: Form(
          key: fomkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.070),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 134),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: height*0.027,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff011A51),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.014),
              Text(
                "Set a name for your profile, here's",
                style: TextStyle(
                  fontSize: height*0.015,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.0060),
              Text(
                "the password",
                style: TextStyle(
                  fontSize: height*0.015,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.035),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/images/Vector.png'),
                  Image.asset('assets/images/4.png'),
                  Image.asset('assets/images/4.png'),
                  Positioned(
                    right: -2,
                    bottom: 65,
                    child: Image.asset('assets/images/Ellipse 28.png'),
                  ),
                ],
              ),
              SizedBox(height: height * 0.070),
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
                  labelText: "Email",
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
              SizedBox(height: height * 0.04),
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
                  labelText: "Name",
                  keyboardType: TextInputType.name,
                  controller: namecontroler,
                  validator: (value) {
                    bool namevalid = RegExp("[a-zA-Z]").hasMatch(value);
                    if (namevalid) {
                      return null;
                    } else {
                      return "enter your name";
                    }
                  },
                ),
              ),
              SizedBox(height: height * 0.04),
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
                  obscureText: hidepassword,
                  labelText: "Password",
                  suffixIcon: InkResponse(
                    onTap: () {
                      setState(() {
                        hidepassword = !hidepassword;
                      });
                    },
                    child: hidepassword == false
                        ? Icon(
                      Icons.visibility_off,color: Colors.black,
                    )
                        : Icon(
                      Icons.visibility,color: Colors.black,
                    ),
                  ),
                  controller: passwordcontroler,
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
              SizedBox(height: height*0.060,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 38,
                ),
                child: CommonButton(
                  onpressed: () {
                    setState(() {
                      if (fomkey.currentState!.validate()) {
                        if (emailvalue == emailcontroler.text) {
                          showDialog(
                              barrierColor: Colors.black87,
                              context: context,
                              builder: (BuildContext context) {
                                return  CongratulationPage();

                              });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Invalid Email"),
                            ),
                          );
                        }
                      }
                    });
                  },
                  text: "CONTINUE",
                  color: Color(0xffFB847C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
