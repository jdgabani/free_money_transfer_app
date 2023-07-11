import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/Electric.dart';
import 'BottomNavigation.dart';
import 'Transfer.dart';


class BalanceProfile extends StatefulWidget {
  const BalanceProfile({Key? key}) : super(key: key);

  @override
  State<BalanceProfile> createState() => _BalanceProfileState();
}

class _BalanceProfileState extends State<BalanceProfile> {
  String? name = "";
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
  List Roundcolor = [
    Color(0xff4F31C2),
    Color(0xff198646),
    Color(0xffFF9D42),
    Color(0xff011A51),
  ];
  List recentimage = [
    'assets/images/paypall.png',
    'assets/images/apple.png',
    'assets/images/macdonals.png',
    'assets/images/amazon.png',
  ];
  List brandname = [
    "Paypall",
    "Apple",
    "Mcdonalds",
    "Amazon",
  ];
  List btc = [
    "+ 0.54915 BTC",
    "+0.75962 BTC",
    "+0.65841 BTC",
    "+0.47865 BTC ",
  ];
  List date = [
    "24 Mar 2022",
    "25 Mar 2022",
    "26 Mar 2022",
    "28 Mar 2022",
  ];
  int selected = 0;
  int selected1 = 0;

  int bottom = 0;
  int first = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 450,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/images/Rectangle 112.png'),
                Image.asset('assets/images/Vector 55.png'),
                Positioned(
                    top: 105,
                    child: Image.asset('assets/images/Vector 56.png')),
                Positioned(
                  top: 245,
                  bottom: -650,
                  left: 1,
                  child: Container(
                    height: height * 0.90,
                    width: width * 0.99,
                    decoration: BoxDecoration(
                      color: Color(0xffEFF2F4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.035),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Operations",
                            style: TextStyle(
                              fontSize: height * 0.023,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            padding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 17),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      InkResponse(
                                        onTap: () {
                                          setState(() {
                                            selected = index;
                                          });
                                        },
                                        child: Container(
                                          height: height * 0.070,
                                          width: width * 0.170,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: selected == index
                                                  ? Colors.black
                                                  : Colors.transparent,
                                            ),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(7),
                                            ),
                                          ),
                                          child: Image.asset(
                                            operaimage[index],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.015),
                                  Text(
                                    operaname[index],
                                    style: TextStyle(
                                      fontSize: height * 0.018,
                                      fontWeight: FontWeight.w400,
                                      color: selected == index
                                          ? Colors.black
                                          : Colors.black54,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    right: 35,
                    top: 48,
                    child: Image.asset('assets/images/Group 238.png')),
                Positioned(
                  right: 25,
                  top: 90,
                  child: DropdownButton(
                      hint: Container(
                        height: height * 0.030,
                        width: width * 0.090,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/logo.jpg",
                          scale: 1.2,
                        ),
                      ),
                      icon: Container(
                          height: height * 0.030,
                          width: width * 0.060,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                              child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 22,
                          ))),
                      underline: SizedBox(),
                      dropdownColor: Colors.white,
                      iconDisabledColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      alignment: Alignment.center,
                      items: [
                        DropdownMenuItem(
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.yellow,
                          ),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.green,
                          ),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.purpleAccent,
                          ),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.deepOrange,
                          ),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.tealAccent,
                          ),
                          value: "",
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          name = value as String?;
                        });
                      }),
                ),
                Positioned(
                  top: 165,
                  left: 30,
                  child: Text(
                    "Available Balance",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 195,
                  left: 30,
                  child: Text(
                    "\$17,000",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              "Recent Transactions",
              style: TextStyle(
                fontSize: height * 0.025,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: false,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 0),
                      child: ListTile(
                        leading: InkResponse(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Transfer(),),);
                          },
                          child: CircleAvatar(
                            radius: 44,
                            backgroundColor: Roundcolor[index],
                            child: Image.asset(recentimage[index]),
                          ),
                        ),
                        title: Text(
                          brandname[index],
                          style: TextStyle(
                            fontSize: height * 0.020,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 13),
                        horizontalTitleGap: 1,
                        subtitle: Text(
                          btc[index],
                          style: TextStyle(
                            fontSize: height * 0.014,
                            color: Color(0xff9caeb8),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Text(
                          date[index],
                          style: TextStyle(
                            fontSize: height * 0.018,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
