
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/WelcomePage.dart';

class EnterCode extends StatefulWidget {

  const EnterCode({Key? key, required this.code}) : super(key: key);
  final code;

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
@override
int second = 60;
bool recent =false;

void timerdemo(){
 Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
   setState(() {
   });
   second--;
   if(second==0){
     timer.cancel();
     second=60;
     recent=true;
     setState(() {
     });
   }
 });
}
@override
  void initState() {
    timerdemo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.08),
                Text(
                  "Enter Code",
                  style: TextStyle(
                    fontSize: height*0.026,
                    color: Color(
                      0xff011A51,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Enter the 4-digit verification sent to",
                  style: TextStyle(
                      fontSize: height*0.013,
                      color: Color(0xff727E96),
                      wordSpacing: 1.5),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "+${widget.code}",
                  style: TextStyle(
                      fontSize: height*0.013,
                      color: Color(0xff727E96),
                      wordSpacing: 1.5),
                ),
                SizedBox(height: height * 0.045),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        'assets/images/3.png',
                      ),
                      Positioned(
                        left: 80,
                        top: 60,
                        child: Image.asset(
                          'assets/images/Ellipse 28.png',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.13),
                OtpTextField(
                    numberOfFields: 4,
                      borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,

                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                    ),
                SizedBox(height: height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend code in",
                      style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: height*0.018,
                      ),
                    ),
                    SizedBox(width: width * 0.006),
                    Text("${second}",style: TextStyle(color: Color(0xffFB847C),fontSize: height*0.018,),),
                    Text(
                      "second",
                      style: TextStyle(
                        color: Color(0xff808080),
                        fontSize: height*0.018,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.02,),
                recent?GestureDetector(
                  onTap: () {
                    setState(() {
                    });
                    recent=false;
                    timerdemo();
                  },
                  child: Text("Resend code",style: TextStyle(fontWeight: FontWeight.w800,fontSize: height*0.016,color: Colors.indigo.shade900,),),
                ):
                    SizedBox(),
                SizedBox(height: height * 0.10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: CommonButton(
                    onpressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>WelcomePage()),);
                    },
                     color: Color(0xffFB847C),
                    text: "CONTINUE",
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
