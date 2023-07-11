import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/ElectricPageOne.dart';

import 'CommonButton.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  List<Map<String, dynamic>> Manuallist = [
    {
      "image": "assets/images/visa.png",
      "title": "Transfer Visa",
      "subtitle": "* * * * * * 3 2 9 8",
    },
    {
      "image": "assets/images/sonabank.png",
      "title": "Transfer Sona Bank",
      "subtitle": "* * * * * * 3 2 9 8",
    },
    {
      "image": "assets/images/getekbank.png",
      "title": "Transfer Getek Bank",
      "subtitle": "* * * * * * 3 2 9 8",
    },
    {
      "image": "assets/images/ateulbank.png",
      "title": "Transfer Ateul Bank",
      "subtitle": "* * * * * * 3 2 9 8",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CloseButton(
              onPressed: () {},
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Container(
              height: height * 0.65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "Payment Details",
                      style: TextStyle(
                        color: Color(0xff011A51),
                        fontSize: height * 0.025,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          "Amount",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black45,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$20.00",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          "Paypall",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Paypall",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          "Transaction ID",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "234795-7456-0008",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        Text(
                          "Time & Date",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "01/03/22 , 11:00 AM",
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    InkResponse(
                      onTap: () {
                        setState(
                          () {
                            showModalBottomSheet(
                              barrierColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  width: double.infinity,
                                  height: height * 0.75,
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFF2F4),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Choose payment methode",
                                              style: TextStyle(
                                                fontSize: height * 0.020,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Spacer(),
                                            InkResponse(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(Icons.close),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text(
                                          "Manual Verification",
                                          style: TextStyle(
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Column(
                                          children: List.generate(
                                            4,
                                            (index) => Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: height * 0.016,
                                                  horizontal: 1),
                                              height: height * 0.10,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: 0.7,
                                                    color: Colors.grey.shade500,
                                                  )
                                                ],
                                                color: Color(0xffEFF2F4),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: ListTile(
                                                  leading: Image.asset(
                                                    Manuallist[index]["image"],
                                                  ),
                                                  title: Text(
                                                    Manuallist[index]["title"],
                                                    style: TextStyle(
                                                      fontSize: height * 0.018,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    Manuallist[index]
                                                        ["subtitle"],
                                                    style: TextStyle(
                                                      fontSize: height * 0.014,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        height: height * 0.070,
                        width: width * 0.80,
                        decoration: BoxDecoration(
                          color: Color(0xff3E8CFE).withAlpha(300),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Center(
                          child: Text(
                            "Choose payment methode",
                            style: TextStyle(
                              color: Color(0xff011A51),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo2.png',
                          scale: 1.3,
                        ),
                        SizedBox(width: width*0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All your transactions are safe and fast,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                  fontSize: height*0.014,
                                wordSpacing: 2,
                              ),
                            ),
                            SizedBox(height: height*0.005,),
                            Text(
                              "By continuing this transaction, you",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                wordSpacing: 2,
                                color: Colors.black26,
                                fontSize: height*0.014,
                              ),
                            ),
                            SizedBox(height: height*0.005,),
                            Row(
                              children: [
                                Text(
                                  "agree to our",
                                  style: TextStyle(
                                    wordSpacing: 2,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26,
                                    fontSize: height*0.015,
                                  ),
                                ),
                                SizedBox(width: width*0.01),
                                Text(
                                  "Terms & Conditions",
                                  style: TextStyle(
                                    wordSpacing: 2,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFF897E).withAlpha(100),
                                    fontSize: height*0.015,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ".",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color:Colors.black,
                                        fontSize: height*0.015,
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
                    Spacer(),
                  ],
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: width * 0.60,
                child: CommonButton(
                  onpressed: () {
                    setState(() {
                        showDialog(
                            barrierColor: Colors.black87,
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                alignment: Alignment.centerRight,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffeff5fe),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  height: height * 0.60,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: height*0.060),
                                        Stack(
                                          alignment: Alignment.topRight,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Image.asset('assets/images/Group 60.png'),
                                            Image.asset('assets/images/Group 61.png'),
                                          ],
                                        ),
                                        SizedBox(height: height*0.060),
                                        Text(
                                          "Transaction Successful",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: height*0.022,
                                            color: Color(0xff011A51),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.025),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: height * 0.015,
                                            color: Color(0xff727E96),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.0050),
                                        Text(
                                          "adipiscing elit. Eu dolor, bibendum",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: height * 0.015,
                                            color: Color(0xff727E96),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.0050),
                                        Text(
                                          "purus eu mi, purus lorem.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: height * 0.015,
                                            color: Color(0xff727E96),
                                          ),
                                        ),
                                        SizedBox(height: height * 0.060),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 10),
                                          child: CommonButton(
                                            onpressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ElectricPageOne()),);
                                            },
                                            color: Color(0xffFB847C),
                                            text: "DONE",
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                        },
                        );
                    },
                    );
                  },
                  text: "SEND MONEY",
                  color: Color(0xffFB847C),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
