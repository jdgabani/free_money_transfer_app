import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/ConfirmInternetData.dart';

class InternetData extends StatefulWidget {
  const InternetData({Key? key}) : super(key: key);

  @override
  State<InternetData> createState() => _InternetDataState();
}

class _InternetDataState extends State<InternetData> {
  List packimage = [
    'assets/images/Freedom internet.png',
    'assets/images/Freedom apps.png',
    'assets/images/Daily kuota.png',
  ];
  List plan = [
    "Freedom Internet",
    "Freedom Apps Ytube,",
    "Daily kuota freedom",
  ];
  List plan2 = [
    "30 Day",
    "Netflix, IG, More...",
    "2GB/Day",
  ];
  List price = [
    "\$10",
    "\$20",
    "\$25",
  ];
  int selected =0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.33,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff011A51),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, left: 125),
                  child: Text(
                    "Internet Data",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.025,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 90,
                child: Container(
                  height: height * 0.24,
                  width: width * 0.83,
                  decoration: BoxDecoration(
                    color: Color(0xffF9F9F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 108,
                left: 50,
                child: Row(
                  children: [
                    Image.asset('assets/images/Mask 2.png'),
                    Text(
                      "  Lori Bryson",
                      style: TextStyle(
                        fontSize: height * 0.017,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 144,
                right: 47,
                child: Container(
                  height: height * 0.034,
                  width: width * 0.24,
                  decoration: BoxDecoration(
                    color: Color(0xffFF897E),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Buy Package",
                      style: TextStyle(
                        fontSize: height * 0.013,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 173,
                left: 47,
                child: Text(
                  "Data",
                  style: TextStyle(
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                top: 188,
                left: 47,
                child: Text(
                  "Monthly",
                  style: TextStyle(
                    fontSize: height * 0.014,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
              ),
              Positioned(
                top: 215,
                left: 47,
                child: Row(
                  children: [
                    Text(
                      "42 GB",
                      style: TextStyle(
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.53,
                    ),
                    Text(
                      "12 GB",
                      style: TextStyle(
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 234,
                left: 47,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.005,
                      width: width * 0.64,
                      decoration: BoxDecoration(
                        color: Color(0xff011a51),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "March 21 - April 21,2022",
                      style: TextStyle(
                        fontSize: height * 0.015,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Text(
              "Choose Package",
              style: TextStyle(
                fontSize: height * 0.023,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                child: Column(
                  children: List.generate(
                    3,
                    (index) => InkResponse(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmInternetData(),),);
                        setState(() {
                        });
                        selected=index;
                      },
                      child: Container(
                        height: height * 0.20,
                        width: width * 0.8,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: selected==index
                                ? Color(0xffFF897E)
                                : Colors.black12,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Image.asset(
                                packimage[index],
                              ),
                              title: Text(
                                plan[index],
                                style: TextStyle(
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                plan2[index],
                                style: TextStyle(
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: Text(
                                price[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: height * 0.022,
                                ),
                              ),
                            ),
                            Text(
                              "-------------------------------------------------------------------------",
                              style: TextStyle(color: Colors.black12),
                            ),
                            SizedBox(height: height*0.01),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "New 42 GB + Call 2hours + Streaming 5 Gb,",
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.016,
                                ),
                              ),
                            ),
                            SizedBox(height: height*0.01),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Active 30 Day",
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.016,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
