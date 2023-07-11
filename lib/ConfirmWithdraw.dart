import 'package:flutter/material.dart';

import 'CommonButton.dart';

class ConfirmWithdraw extends StatefulWidget {
  const ConfirmWithdraw({Key? key}) : super(key: key);

  @override
  State<ConfirmWithdraw> createState() => _ConfirmWithdrawState();
}

class _ConfirmWithdrawState extends State<ConfirmWithdraw> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.20),
            Dialog(
                insetPadding: EdgeInsets.symmetric(horizontal: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffeff5fe),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.05),
                      Text(
                        "Confirm Withdraw",
                        style: TextStyle(
                          fontSize: height * 0.019,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                        height: height * 0.098,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Amount",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: height * 0.016),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "\$20.00",
                                  hintStyle: TextStyle(
                                    fontSize: height * 0.021,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        height: height * 0.098,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Bank Account",
                                  labelStyle: TextStyle(color: Colors.black38),
                                  suffixIcon: Image.asset(
                                      'assets/images/Group 296.png'),
                                  hintStyle: TextStyle(
                                    fontSize: height * 0.021,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 11),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Container(
                        height: height * 0.098,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 13),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Amount",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height*0.018,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "\$ 250",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: height*0.020,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Fee",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height*0.018,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Free",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: height*0.016,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85),
                        child: CommonButton(
                          onpressed:(){},
                          color: Color(0xffFB847C),
                          text: "WITHDRAW",
                        ),
                      ),
                    ],
                  ),
                  height: height * 0.65,
                  width: double.infinity,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
