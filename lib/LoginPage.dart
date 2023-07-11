import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/CommonTextFromField.dart';
import 'package:free_money_transfer_app/CongratulationPage.dart';
import 'package:free_money_transfer_app/ForgotPasswordPage.dart';
import 'package:free_money_transfer_app/WelcomePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailvalue = "jdgabani1@gmail.com";
  var passwordvalue = "Jay@1996";
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  final fomkey = GlobalKey<FormState>();
  bool hidepassword = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.095),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset('assets/images/login.png'),
                Positioned(
                    right: 9,
                    top: 25,
                    child: Image.asset('assets/images/Ellipse 28.png')),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 130),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 22,
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
            SizedBox(height: height * 0.075),
            Form(
              key: fomkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
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
                  keyboardType: TextInputType.name,
                  controller: emailcontroler,
                  validator: (value) {
                    bool emailvalid = RegExp(
                      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$",
                    ).hasMatch(value!);
                    if (emailvalid) {
                      return null;
                    } else {
                      return "enter valid Email";
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: height * 0.048),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
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
                          Icons.visibility_off,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                ),
                controller: passwordcontroler,
                validator: (value) {
                  bool passwordvalid = RegExp(
                    "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$",
                  ).hasMatch(value!);
                  if (passwordvalid) {
                    return null;
                  } else {
                    return "enter valid password";
                  }
                },
              ),
            ),
            SizedBox(height: height * 0.013),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage(),
                        ));
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.016,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.065),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CommonButton(
                onpressed: () {
                  if (fomkey.currentState!.validate()) {
                    if (emailvalue == emailcontroler.text &&
                        passwordvalue == passwordcontroler.text) {
                      setState(
                        () {
                          showDialog(
                            barrierColor: Colors.black87,
                            context: context,
                            builder: (BuildContext Context) {
                              return CongratulationPage();
                            },
                          );
                        },
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Invalid Email Or Password"),
                        ),
                      );
                    }
                  }
                },
                text: "LOGIN",
                color: Color(0xffFB847C),
              ),
            ),
            SizedBox(height: height * 0.030),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: width * 0.0098),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFB847C),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
