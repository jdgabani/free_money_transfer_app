import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/NotificationPage.dart';

class ConfirmInternetData extends StatefulWidget {
  const ConfirmInternetData({Key? key}) : super(key: key);

  @override
  State<ConfirmInternetData> createState() => _ConfirmInternetDataState();
}

class _ConfirmInternetDataState extends State<ConfirmInternetData> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkResponse(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkResponse(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/Back.png')),
                      SizedBox(width: width * 0.20),
                      Center(
                        child: Text(
                          "Internet Data",
                          style: TextStyle(
                            fontSize: height * 0.020,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Container(
                    height: height * 0.24,
                    width: width * 0.83,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/Mask 2.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "  Lori Bryson",
                                  style: TextStyle(
                                    fontSize: height * 0.017,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35, left: 58),
                                child: Container(
                                  height: height * 0.036,
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
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            "Data",
                            style: TextStyle(
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Monthly",
                            style: TextStyle(
                              fontSize: height * 0.014,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
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
                          Divider(
                            thickness: height * 0.005,
                            color: Color(0xff011A51),
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
                  ),
                ),
                SizedBox(height: height * 0.01),
                Text(
                  "Choose Package",
                  style: TextStyle(
                    fontSize: height * 0.023,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 35),
                  child: Text(
                    "Confirm Internet Data",
                    style: TextStyle(
                      fontSize: height * 0.020,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Container(
                  height: height * 0.090,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Freedom Internet 30 Day",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.016,
                        ),
                        labelText: "Package",
                        labelStyle: TextStyle(color: Colors.black38),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                Container(
                  height: height * 0.090,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "+62 852-432-450-00",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.016,
                        ),
                        labelText: "Lori Bryson",
                        labelStyle: TextStyle(color: Colors.black38),
                        suffixIcon: Image.asset('assets/images/Profile.png'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                Container(
                  height: height * 0.090,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(color: Colors.black38),
                            ),
                            Spacer(),
                            Text(
                              "\$ 10",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: height*0.020,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Fee",
                              style: TextStyle(color: Colors.black38),
                            ),
                            Spacer(),
                            Text(
                              "Free",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: height*0.020,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CommonButton(
                    onpressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context)=>
                            NotificationPage(),
                      ),
                      );
                    },
                    color: Color(0xffFB847C),
                    text: "BUY",
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
