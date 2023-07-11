import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/ScanYourCard.dart';

import 'WalletAccount.dart';

class WalletCards extends StatefulWidget {
  const WalletCards({Key? key}) : super(key: key);

  @override
  State<WalletCards> createState() => _WalletCardsState();
}

class _WalletCardsState extends State<WalletCards> {
  List textlist = [
    "Bank Accounts",
    "Cards",
  ];
  List button =[
    WalletAccount(),
    WalletCards(),
  ];
  int selected = 1;
  int selected1 = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkResponse(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/Back.png'),
                  ),
                  SizedBox(width: width * 0.27),
                  Center(
                    child: Text(
                      "Wallet",
                      style: TextStyle(
                        color: Color(0xffa011A51),
                        fontWeight: FontWeight.w600,
                        fontSize: height * 0.025,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                'assets/images/18 Card.png',
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          height: height * 0.085,
                          child: Image.asset('assets/images/Income.png')),
                      Container(
                          height: height * 0.085,
                          child: Image.asset('assets/images/exp inc card.png')),
                    ],
                  ),
                  Image.asset(
                    'assets/images/balance is.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Analytics",
                style: TextStyle(
                  fontSize: height * 0.024,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff011a51),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 22),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF7F9FB),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    2,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selected = index;
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>button[index],),);
                          },
                        );
                      },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                          color: selected == index
                              ? Color(0xffFF897E)
                              : Color(0xffF7F9FB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            textlist[index],
                            style: TextStyle(
                              color: selected == index
                                  ? Color(0xffF7F9FB)
                                  : Color(0xff011A51),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkResponse(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanYourCard(),),);
                },
                child: Container(
                  height: height * 0.068,
                  width: width * 0.83,
                  decoration: BoxDecoration(
                    color: Color(0xff011A51),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Row(
                      children: [
                        Image.asset('assets/images/Scan.png'),
                        SizedBox(width: width*0.03,),
                        Text(
                          "Scan Card",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: height * 0.020,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
