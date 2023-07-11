import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  List data = [
    "Day",
    "Week",
    "Month",
    "Years",
  ];
  List indexlist = [7, 4, 12, 6];
  List<List> statiiclist = [
    [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ],
    ["1 week", "2 week", "3 week", "4 week"],
    [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ],
    ["2018", "2019", "2020", "2021", "2022", "2023"],
  ];
  List spen = [
    Icons.shopping_bag_outlined,
    Icons.shopping_cart_outlined,
  ];
  List name = [
    "Shopping",
    "Grocery",
  ];
  List rate = [
    "\$250.00",
    "\$300.00",
    "Grocery",
  ];
  int selected = 0;
  int selected1 = 0;
  int selected2 = 0;

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                children: [
                  Image.asset('assets/images/Back.png'),
                  SizedBox(width: width * 0.24),
                  Text(
                    "Statistic",
                    style: TextStyle(
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Current Balance",
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.016,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$7800.50",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.033,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: height * 0.015,
                    color: Color(
                      0xffFD6262,
                    ),
                  ),
                  Text(
                    " 5,25%",
                    style: TextStyle(
                      color: Color(
                        0xffFD6262,
                      ),
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.015,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.040,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        data[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.018,
                          color: selected == index
                              ? Color(0xff011A51)
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Image.asset('assets/images/graf.png'),
            SizedBox(
              height: height * 0.060
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        indexlist[selected],
                            (index) => GestureDetector(
                              onTap: () {
                                selected=index;
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 14),
                                child: Text(
                          statiiclist[selected][index],
                          style:  TextStyle(color: Colors.grey),
                        ),
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.030),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: [
                  Container(
                    height: height * 0.075,
                    width: width * 0.30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: height * 0.040,
                            width: height * 0.040,
                            decoration: BoxDecoration(
                              color: Color(0xffFF897E),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.call_received,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.018,
                            ),
                            Text(
                              "Income",
                              style: TextStyle(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w500,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.004,
                            ),
                            Text(
                              "\$3460",
                              style: TextStyle(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width * 0.093),
                  Container(
                    height: height * 0.075,
                    width: width * 0.30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: height * 0.040,
                            width: height * 0.040,
                            decoration: BoxDecoration(
                              color: Color(0xff011A51),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.call_made_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.018,
                            ),
                            Text(
                              "Outcome",
                              style: TextStyle(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w500,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.004,
                            ),
                            Text(
                              "\$2500",
                              style: TextStyle(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.026,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "Spendings",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.020,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.0095,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Container(
                      height: height * 0.1,
                      width: width * 0.5,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Color(0xffFFC4BF).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white,
                              child: Icon(
                                spen[index],
                                color: Color(0xffFF897E),
                                size: height * 0.025,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                name[index],
                                style: TextStyle(
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(height: height * 0.009),
                              Row(
                                children: [
                                  Text(
                                    rate[index],
                                    style: TextStyle(
                                      fontSize: height * 0.021,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.060,
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/Ellipse 15.png'),
                                      Positioned(
                                        top: 7,
                                        left: 4,
                                        child: Text(
                                          "65%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: height * 0.012),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
