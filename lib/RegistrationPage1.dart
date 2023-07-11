import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/RegistrationPage2.dart';

class RegistrationPage1 extends StatefulWidget {
  RegistrationPage1({Key? key}) : super(key: key);

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffEFF2F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.12),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'assets/images/1.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 121),
              child: Text(
                "Flowa",
                style: TextStyle(
                  fontFamily: 'TitilliumWeb',
                  fontSize: height*0.024,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff011A51),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.048,
            ),
            Text(
              "Experience the",
              style: TextStyle(
                // fontFamily: 'TitilliumWeb',
                fontSize: height*0.045,
                color: Color(0xff011A51),
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Text(
                  "easier way",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    // fontFamily: 'TitilliumWeb',
                    fontSize: height*0.044,
                    color: Color(0xffFF897E),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  "for",
                  style: TextStyle(
                    // fontFamily: 'TitilliumWeb',
                    fontSize: height*0.044,
                    color: Color(0xff011A51),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Text(
              "transaction!",
              style: TextStyle(
                // fontFamily: 'TitilliumWeb',
                fontSize: height*0.045,
                color: Color(0xff011A51),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: height * 0.026,
            ),
            Text(
              "Connect your money to your",
              style: TextStyle(
                color: Color(0xff848484),
                wordSpacing: 2,
                fontSize: height*0.020,
              ),
            ),
            SizedBox(height: 7),
            Text(
              "friends & brands.",
              style: TextStyle(
                color: Color(0xff848484),
                fontSize: height*0.020,
              ),
            ),
            SizedBox(height: height * 0.12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CommonButton(
                onpressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegistrationPage2()),);
                },
                text: "GET STARTED",
                color: Color(0xffFB847C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
