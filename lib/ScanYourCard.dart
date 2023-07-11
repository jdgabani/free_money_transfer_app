import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/AddNewCards.dart';

import 'CommonButton.dart';

class ScanYourCard extends StatefulWidget {
  const ScanYourCard({Key? key}) : super(key: key);

  @override
  State<ScanYourCard> createState() => _ScanYourCardState();
}

class _ScanYourCardState extends State<ScanYourCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
                  InkResponse(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewCards(),),);
                      },
                      child: Image.asset('assets/images/Back.png')),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  Text(
                    "Scan your card",
                    style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.10,
            ),
            Center(
              child: Text(
                "Card Number",
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.016,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.010,
            ),
            Center(
              child: Text(
                "0045 4768 243 0098",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.016,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.075,
            ),
            Center(
              child: Image.asset(
                'assets/images/Group 82.png',
                scale: 4,
              ),
            ),
            SizedBox(
              height: height * 0.12,
            ),
            Center(
              child: Image.asset(
                'assets/images/Icon scan.png',
                scale: 4,
              ),
            ),
            SizedBox(height: height*0.01,),
            Center(
                child: Text(
              "Or",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: height * 0.016,
              ),
            ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            CommonButton(
              onpressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewCards(),),);
              },
              color: Color(0xffFB847C),
              text: "MANUAL",
            ),
          ],
        ),
      ),
    );
  }
}
