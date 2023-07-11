import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  List static = [
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
  List<Map<String, dynamic>> list = [
    {"color": const Color(0xffFF897E), "text": "Shopping", "text2": "\$3460"},
    {"color": const Color(0xff011A51), "text": "Grocery", "text2": "\$2500"},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      "icon": Icons.shopping_bag_outlined,
      "text": "Income",
      "text2": "\$250.00",
    },
    {
      "icon": Icons.local_grocery_store_outlined,
      "text": "Outcome",
      "text2": "\$300.00",
    },
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xffEFF5FE),
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Center(
                        child: Text(
                          "Statistic",
                          style: TextStyle(
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff011A51),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      "Current Balance",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: height * 0.017,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$7800.50",
                          style: TextStyle(
                            fontSize: height * 0.030,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          "5,25%",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: height * 0.017,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        4,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(
                                  () {
                                selected = index;
                              },
                            );
                          },
                          child: Text(
                            static[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selected == index
                                  ? const Color(0xff011A51)
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset("assets/images/statistic.png"),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        indexlist[selected],
                            (index) => Text(
                          statiiclist[selected][index],
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        2,
                            (index) => Container(
                          height: height * 0.076,
                          width: width * 0.32,
                          decoration: BoxDecoration(
                            color: const Color(0xffEFF5FE),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: height * 0.045,
                                  width: height * 0.045,
                                  decoration: BoxDecoration(
                                    color: list[index]["color"],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      list[index]["text"],
                                      style: TextStyle(
                                        fontSize: height * 0.018,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      list[index]["text2"],
                                      style: TextStyle(
                                        fontSize: height * 0.018,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      children: [
                        Text(
                          "Spendings",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.more_horiz,
                          color: Color(0xff578FBE),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          2,
                              (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: height * 0.12,
                            width: width * 0.45,
                            decoration: BoxDecoration(
                              color: const Color(0xffF1F0F8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: height * 0.019,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          list2[index]["icon"],
                                          color: const Color(0xffFF897E),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Text(
                                        list2[index]["text"],
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: height * 0.020,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        list2[index]["text2"],
                                        style: TextStyle(
                                          fontSize: height * 0.020,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      CircleAvatar(
                                        radius: height * 0.019,
                                        backgroundColor: const Color(0xffF1F0F8),
                                        backgroundImage: const AssetImage(
                                          "assets/images/spendings.png",
                                        ),
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
                    SizedBox(
                      height: height * 0.04,
                    ),
                  ],
                ),
              ),
            ],
            ),
        );
    }
}