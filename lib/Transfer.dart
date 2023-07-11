import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/BalanceProfile.dart';

import 'CommonButton.dart';
import 'TransactionSuccess.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  int selected = 0;
  int selactedrecepient = 0;
  List textlist = [
    100,
    150,
    200,
    250,
  ];
  List namelist = [
    "Harold ",
    "Lory Bryson",
    "Gloria ",
    "Joey ",
    "Martin",
  ];
  List recepientimage = [
    "assets/images/Mask 1.png",
    "assets/images/Mask 2.png",
    "assets/images/Mask 3.png",
    "assets/images/Mask 4.png",
    "assets/images/Mask 5.png",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkResponse(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BalanceProfile()),
                    );
                  },
                  child: Image.asset('assets/images/Back.png')),
              SizedBox(height: height * 0.019),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: height * 0.024,
                    color: Color(0xff011A51),
                  ),
                  SizedBox(width: width * 0.01),
                  Text(
                    "Send Money",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.022,
                      color: Color(0xff011A51),
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/Group 271.png',
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.004,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Choose Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * 0.017,
                    color: Color(0xff777777),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.030,
              ),
              Image.asset('assets/images/18 Card.png'),
              SizedBox(height: height * 0.055),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Text(
                  "How much you would like to send?",
                  style: TextStyle(
                    fontSize: height * 0.020,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: Row(
                  children: [
                    InkResponse(
                      onTap: (){
                        setState(() {
                          textlist[selected]--;
                        });
                      },
                      child: Container(
                        height: height * 0.032,
                        width: height * 0.032,
                        decoration: BoxDecoration(
                          color: Color(0xffEAEBEB),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.046,
                    ),
                    Text(
                      "${textlist[selected]}.00",
                      style: TextStyle(
                          fontSize: height * 0.042,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: width * 0.10,
                    ),
                    InkResponse(
                      onTap: () {
                        setState(() {
                          textlist[selected]++;
                        });
                      },
                      child: Container(
                        height: height * 0.032,
                        width: height * 0.032,
                        decoration: BoxDecoration(
                          color: Color(0xffEAEBEB),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.033,
              ),
              Row(
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      height: height * 0.03,
                      width: width * 0.15,
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: selected == index
                                  ? Color(0xffF8C345)
                                  : Colors.grey.shade400,
                              spreadRadius: 1),
                        ],
                        color: selected == index
                            ? Color(0xffF8C345)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text("s${textlist[index]}",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                "Choose Recepient",
                style: TextStyle(
                    fontSize: height * 0.018, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    5,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selactedrecepient = index;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.062,
                                width: height * 0.062,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      recepientimage[index],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: selactedrecepient == index
                                        ? Color(0xff011a51)
                                        : Colors.transparent,
                                  ),
                                ),
                              ),
                              SizedBox(height: height*0.01),
                              Text(
                                  namelist[index],
                                style: TextStyle(
                                  fontSize: height*0.015,
                                  fontWeight: FontWeight.w500,
                                  color: selactedrecepient==index
                                    ? Color(0xff101828)
                                    :Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  Container(
                    width: width * 0.40,
                    child: CommonButton(
                      onpressed: () {
                        Navigator.pop(context);
                      },
                      color: Color(0xffFB847C),
                      text: "Take me back",
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: width * 0.40,
                    child: CommonButton(
                      onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransactionSuccess(),
                            ));
                      },
                      color: Color(0xff011A51),
                      text: "Send Money",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
