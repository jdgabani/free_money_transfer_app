import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/ElectricPageOne.dart';
import 'package:free_money_transfer_app/Withdarw.dart';

class Electric extends StatefulWidget {
  const Electric({Key? key}) : super(key: key);

  @override
  State<Electric> createState() => _ElectricState();
}

class _ElectricState extends State<Electric> {
  List textlist = ["Electricity Token", "Bills"];
  List pagelist = [
    ElectricityToken(),
    Bills(),
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      InkResponse(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/Back.png',
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          "Electric",
                          style: TextStyle(
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff011A51),
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: width * 0.05,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Container(
                  height: height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F9FB),
                    borderRadius: BorderRadius.circular(15),
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
                            },
                          );
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.39,
                          decoration: BoxDecoration(
                            color: selected == index
                                ? Color(0xff011a51)
                                : Color(0xffF7F9FB),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              textlist[index],
                              style: TextStyle(
                                color: selected == index
                                    ? Color(0xffF7F9FB)
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
              ],
            ),
          ),
          pagelist[selected],
        ],
      ),
    );
  }
}

class ElectricityToken extends StatefulWidget {
  const ElectricityToken({Key? key}) : super(key: key);

  @override
  State<ElectricityToken> createState() => _ElectricityTokenState();
}

class _ElectricityTokenState extends State<ElectricityToken> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.black12, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
              child: TextField(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w500),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: height * 0.010,
                      vertical: height * 0.01,
                    ),
                    width: width * 0.170,
                    decoration: BoxDecoration(
                      color: Color(0xffdce9fe),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Check",
                        style: TextStyle(
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff011A51),
                        ),
                      ),
                    ),
                  ),
                  hintText: "Enter Token Number",
                  hintStyle: TextStyle(
                    fontSize: height * 0.017,
                    color: Colors.black38,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Container(
            height: height * 0.09,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.black12, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
              child: TextField(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w500),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: height * 0.010,
                      vertical: height * 0.01,
                    ),
                    width: width * 0.170,
                  ),
                  hintText: "Enter amount",
                  hintStyle: TextStyle(
                    fontSize: height * 0.017,
                    color: Colors.black38,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
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

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  List<Map<String, dynamic>> billsenquiry = [
    {
      "image": "assets/images/myhouse.png",
      "title": "My House",
      "subtitle": "**** *** 3980",
      "amount" : "\$15",
    },
    {
      "image": "assets/images/electric office.png",
      "title": "Electric Office",
      "subtitle": "**** *** 3980",
      "amount" : "\$35",
    },
    {
      "image": "assets/images/villabali.png",
      "title": "Villa Bali",
      "subtitle": "**** *** 3980",
      "amount" : "\$5",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Expanded(
        child: Column(
            children: [
              Image.asset(
                "assets/images/billselec.png",
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "\$50.00",
                style: TextStyle(
                  fontSize: height * 0.038,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "need to be pay",
                style: TextStyle(color: Colors.grey, fontSize: height * 0.014),
              ),
              Spacer(),
              Container(
                height: height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Bills Enquiry",
                            style: TextStyle(
                              fontSize: height * 0.020,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: height * 0.016,
                              color: Colors.red.shade300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*0.0080),
                      Column(
                        children: List.generate(
                          3,
                              (index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WithDraw(),),);
                                },
                                child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: height * 0.012,
                                horizontal: 1,
                            ),
                            height: height * 0.088,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.7,
                                    color: Colors.black12,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: ListTile(
                                  leading: Image.asset(
                                    billsenquiry[index]["image"],
                                  ),
                                  title: Text(
                                    billsenquiry[index]["title"],
                                    style: TextStyle(
                                      fontSize: height * 0.018,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  subtitle: Text(
                                    billsenquiry[index]["subtitle"],
                                    style: TextStyle(
                                      fontSize: height * 0.014,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 3,
                                    ),
                                  ),
                                  trailing: Text(
                                    billsenquiry[index]["amount"],
                                    style: TextStyle(
                                      fontSize: height * 0.018,
                                      fontWeight: FontWeight.w600,
                                    ),
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
              )
            ],
            ),
        );
    }
}