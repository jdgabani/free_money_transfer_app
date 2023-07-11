import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/BalanceProfile.dart';

import 'CommonButton.dart';

class CongratulationPage extends StatefulWidget {
  const CongratulationPage({Key? key}) : super(key: key);

  @override
  State<CongratulationPage> createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffeff5fe),
          borderRadius: BorderRadius.circular(30),
        ),
        height: height * 0.62,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.06),
              Text(
                "Congratulation, Now you",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.025,
                  color: Color(0xff011A51),
                ),
              ),
              Text(
                "are registered!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.025,
                  color: Color(0xff011a51),
                ),
              ),
              SizedBox(height: height * 0.017),
              Text(
                "Start using the app, Pay attention",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: height * 0.015,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.0050),
              Text(
                "to the rules in the application",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: height * 0.015,
                  color: Color(0xff727E96),
                ),
              ),
              SizedBox(height: height * 0.030),
              Image.asset(
                'assets/images/Group 265.png',
              ),
              SizedBox(height: height * 0.070),
              CommonButton(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BalanceProfile(),
                    ),
                  );
                },
                color: Color(0xffFB847C),
                text: "START",
              )
            ],
          ),
        ),
      ),
    );
  }
}
