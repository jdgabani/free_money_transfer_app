import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/ContactList.dart';
import 'package:free_money_transfer_app/InternetData.dart';
import 'package:free_money_transfer_app/LoginPage.dart';
import 'package:free_money_transfer_app/ProfileGeneral.dart';
import 'package:free_money_transfer_app/ResetPasswordPage.dart';
import 'package:free_money_transfer_app/WalletCards.dart';

import 'Electric.dart';

class ElectricPageOne extends StatefulWidget {
  const ElectricPageOne({Key? key}) : super(key: key);

  @override
  State<ElectricPageOne> createState() => _ElectricPageOneState();
}

class _ElectricPageOneState extends State<ElectricPageOne> {
  List operaname = [
    "Transfer",
    "Withdraw",
    "Top up",
    "Deposit",
  ];
  List operaimage = [
    'assets/images/transfer.png',
    'assets/images/withdrawa.png',
    'assets/images/top up.png',
    'assets/images/deposit.png',
  ];
  List details = [
    "Invite Friends",
    "Contact List",
    "My Wallet",
    "Change Password",
    "About us",
  ];
  int selected = 0;
  bool isswitch = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white12,
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.32,
              width: double.infinity,
              color: Color(0xff011A51),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.03),
                  Image.asset('assets/images/Group 271.png'),
                  SizedBox(height: height * 0.03),
                  Text(
                    "Rene Wells",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: height * 0.018,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.004),
                  Text(
                    "Roday43@gmail.com",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.015,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  InkResponse(
                    onTap: () {},
                    child: Container(
                      height: height * 0.037,
                      width: width * 0.26,
                      decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          "Verified",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.013,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                      fontSize: height * 0.018,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Switch.adaptive(
                    inactiveThumbColor: Colors.white,
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.black12,
                    activeTrackColor: Colors.black12,
                    value: isswitch,
                    onChanged: (value) {
                      setState(() {
                        isswitch = !isswitch;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height*0.014,),
                      InkResponse(
                        onTap: () {
                        },
                        child: Text(
                          "Invite Friends",
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.040,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactList(),),);
                        },
                        child: Text(
                          "Contact List",
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.040,),
                      InkResponse(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>WalletCards(),),);
                        },
                        child: Text(
                          "My Wallet",
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.040,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordPage(),),);
                        },
                        child: Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.040,),
                      InkResponse(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileGeneral(),),);
                        },
                        child: Text(
                          "About us",
                          style: TextStyle(
                            fontSize: height * 0.017,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: InkResponse(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      size: height * 0.027,
                      color: Color(0xffFF897E),
                    ),
                    SizedBox(width: width * 0.01),
                    Text(
                      "Log Out",
                      style: TextStyle(
                        color: Color(0xffFF897E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.35,
                color: Color(0xff011A51),
              ),
              Image.asset(
                'assets/images/Vector 55.png',
              ),
              Positioned(
                  top: 105,
                  right: -15,
                  child: Image.asset('assets/images/Vector 56.png')),
              Positioned(
                  right: 25,
                  top: 55,
                  child: Image.asset('assets/images/Notification.png')),
              Positioned(
                right: 23,
                top: 52,
                child: Image.asset('assets/images/Ellipse 63.png'),
              ),
              Positioned(
                  top: 62,
                  left: 35,
                  child: Image.asset('assets/images/Group 271.png')),
              Positioned(
                left: 84,
                top: 69,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.016),
                    ),
                    Text(
                      "Rene Wells",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.017,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 160,
                child: Container(
                  height: height * 0.255,
                  width: width * 0.880,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 13),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(
                                fontSize: height * 0.018,
                                color: Colors.black38,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Active",
                              style: TextStyle(
                                fontSize: height * 0.017,
                                color: Color(0xffFF897E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "\$7800.50",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 28, horizontal: 8),
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Column(
                              children: [
                                Container(
                                  height: height * 0.065,
                                  width: height * 0.065,
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFF2F4),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Image.asset(
                                    operaimage[index],
                                  ),
                                ),
                                SizedBox(height: height * 0.0080),
                                Text(
                                  operaname[index],
                                  style: TextStyle(
                                    fontSize: height * 0.014,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 133),
                child: Text(
                  "All Service",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * 0.023,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkResponse(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Electric(),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.060,
                        width: height * 0.060,
                        decoration: BoxDecoration(
                          color: Color(0xffFE388F).withAlpha(300),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset('assets/images/electric.png'),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Electric",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: height * 0.060,
                      width: height * 0.060,
                      decoration: BoxDecoration(
                        color: Color(0xffA767F1).withAlpha(300),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset('assets/images/merchant.png'),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Merchant",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkResponse(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>InternetData(),),);
                      },
                      child: Container(
                        height: height * 0.060,
                        width: height * 0.060,
                        decoration: BoxDecoration(
                          color: Color(0xff00B1F1).withAlpha(300),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset('assets/images/internet.png'),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Internet",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.16,
                    ),
                    Container(
                      height: height * 0.060,
                      width: height * 0.060,
                      decoration: BoxDecoration(
                        color: Color(0xffEFCB10).withAlpha(300),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset('assets/images/ticket.png'),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Ticket",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.060,
                      width: height * 0.060,
                      decoration: BoxDecoration(
                        color: Color(0xffFF7954).withAlpha(300),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset('assets/images/mobile.png'),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Mobile",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.18,
                    ),
                    Container(
                      height: height * 0.060,
                      width: height * 0.060,
                      decoration: BoxDecoration(
                        color: Color(0xff3555D4).withAlpha(300),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/transfer111.png',
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.027,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 138),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.059,
                      width: height * 0.059,
                      decoration: BoxDecoration(
                        color: Color(0xffFC7B52).withAlpha(300),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset('assets/images/more.png'),
                    ),
                    SizedBox(width: width * 0.03),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
