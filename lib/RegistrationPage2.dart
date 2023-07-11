import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/EnterCode.dart';
import 'package:free_money_transfer_app/LoginPage.dart';

import 'CommonButton.dart';

class RegistrationPage2 extends StatefulWidget {
  RegistrationPage2({Key? key}) : super(key: key);

  @override
  State<RegistrationPage2> createState() => _RegistrationPage2State();
}

class _RegistrationPage2State extends State<RegistrationPage2> {
  String phonevalue = "9979396888";
  final formkey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(
        0xffeff5fe,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.08),
              Text(
                "Registration",
                style: TextStyle(
                  fontSize: height * 0.023,
                  color: Color(
                    0xff011A51,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: height * 0.015),
              Text(
                "Enter your mobile phone number, we will send",
                style: TextStyle(
                    fontSize: height * 0.014,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff727E96),
                    wordSpacing: 1.5),
              ),
              SizedBox(height: height * 0.005),
              Text(
                "you OTP to verify later.",
                style: TextStyle(
                    fontSize: height * 0.014,
                    color: Color(0xff727E96),
                    wordSpacing: 1.5),
              ),
              SizedBox(height: height * 0.045),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset('assets/images/2.png'),
                  Positioned(
                      top: 52,
                      left: 5,
                      child: Image.asset('assets/images/Ellipse 28.png')),
                ],
              ),
              SizedBox(height: height * 0.11),
              Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: phonecontroller,
                    validator: (value) {
                      setState(() {});
                      if (value!.isEmpty) {
                        return "Enter valid phone";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                      prefixIcon: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CountryPickerDropdown(
                            icon: SizedBox(),
                            initialValue: 'AR',
                            priorityList: [
                              CountryPickerUtils.getCountryByIsoCode('GB'),
                              CountryPickerUtils.getCountryByIsoCode('CN'),
                            ],
                            sortComparator: (Country a, Country b) =>
                                a.isoCode.compareTo(b.isoCode),
                            onValuePicked: (Country country) {
                              print("${country.name}");
                            },
                          ),
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.check_circle,
                        size: 25,
                        color: Color(0xffFF897E),
                      ),
                      labelText: "Number Phone",
                      counterText: "",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.017,
                        color: Color(0xff727E96),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 1, vertical: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.07),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CommonButton(
                  onpressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EnterCode(
                                  code: phonecontroller.text,
                                )),
                      );
                    }
                  },
                  text: "SEND VIA SMS",
                  color: Color(0xffFB847C),
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CommonButton(
                  onpressed: () {},
                  color: Color(0xff011A51),
                  text: "SEND VIA WHATSAPP",
                ),
              ),
              SizedBox(height: height * 0.070),
              Text(
                "By creating and/or using an account, you",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.017,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "agree to our ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.017,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Terms & Login.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.017,
                        color: Color(0xffFB847C),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
