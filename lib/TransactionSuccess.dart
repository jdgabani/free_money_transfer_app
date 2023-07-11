import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/TopUp.dart';

class TransactionSuccess extends StatefulWidget {
  const TransactionSuccess({Key? key}) : super(key: key);

  @override
  State<TransactionSuccess> createState() => _TransactionSuccessState();
}

class _TransactionSuccessState extends State<TransactionSuccess> {
  List Details = [
    "Name",
    "Transaction ID",
    "Amount",
    "Transfer cost",
    "Time & Date",
  ];
  List oppname = [
    "Rane wells",
    "",
    "\$456.00",
    "\$00.00",
    "01/03/22,11:00 AM",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CloseButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 27),
                child: Container(
                  height: height * 0.65,
                  width: width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff011A51),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.040,
                      ),
                      Container(
                        height: height * 0.150,
                        width: width * 0.50,
                        decoration: BoxDecoration(
                          color: Color(0xffFB847C),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/check.png'),
                      ),
                      SizedBox(
                        height: height * 0.040,
                      ),
                      Text(
                        "Transffered Succesfully",
                        style: TextStyle(
                          fontSize: height * 0.024,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Divider(
                        color: Color(0xffE2E9EB),
                        indent: width * 0.080,
                        endIndent: width * 0.080,
                      ),
                      SizedBox(
                        height: height * 0.014,
                      ),
                      Column(
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    Details[index],
                                    style: TextStyle(
                                      fontSize: height * 0.014,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white24,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  oppname[index],
                                  style: TextStyle(
                                    fontSize: height * 0.014,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white70,
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
              SizedBox(
                height: height * 0.020,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: CommonButton(
                  onpressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TopUp(),),);
                  },
                  text: "DONE",
                  color: Color(0xffFB847C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
