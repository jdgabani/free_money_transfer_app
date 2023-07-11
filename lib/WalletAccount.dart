import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/WalletCards.dart';

class WalletAccount extends StatefulWidget {
  const WalletAccount({Key? key}) : super(key: key);

  @override
  State<WalletAccount> createState() => _WalletAccountState();
}

class _WalletAccountState extends State<WalletAccount> {
  List textlist = [
    "Cards",
    "Account",
  ];
  List button = [
    WalletCards(),
    WalletAccount(),
  ];
  List cardcolor = [
    Color(0xffFB9089),
    Color(0xff50B6A9),
    Color(0xff011A51),
    Color(0xffC044FA),
  ];
  int selected = 1;
  int selected1 = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Row(
                  children: [
                    InkResponse(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WalletCards(),
                            ),
                          );
                        },
                        child: Image.asset('assets/images/Back.png')),
                    SizedBox(
                      width: width * 0.27,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Container(
                height: height * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(30),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => button[index],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: height * 0.055,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: selected == index
                              ? Color(0xffFF897E)
                              : Color(0xffF7F9FB),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            textlist[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: selected == index
                                  ? Colors.black
                                  : Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.23,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/19 visacard.png',
                                ),
                                margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                          Positioned(
                              right: 30,
                              top: 23,
                              child: Image.asset('assets/images/image 3.png')),
                          Positioned(
                            right: 35,
                            top: 110,
                            child: Image.asset('assets/images/Digital.png'),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Card Number"),
                  labelStyle: TextStyle(color: Colors.black38),
                  hintText: "4621 2520 056 7820",
                  hintStyle: TextStyle(
                    fontSize: height * 0.016,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 25),
              child: Row(
                children: [
                  Container(
                    height: height*0.087,
                    width: width*0.40,
                    color: Colors.transparent,
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          label: Text("Expire Date"),
                          labelStyle: TextStyle(color: Colors.black38,fontSize: height*0.020),
                          hintText: "02/07/25",
                          hintStyle: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.042,),
                  Container(
                    height: height*0.087,
                    width: width*0.39,
                    color: Colors.transparent,
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          label: Text("CVC/CVV"),
                          labelStyle: TextStyle(color: Colors.black38),
                          hintText: "782",
                          hintStyle: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Cardholder Name"),
                  labelStyle: TextStyle(color: Colors.black38),
                  hintText: "Roday Basreng",
                  hintStyle: TextStyle(
                    fontSize: height * 0.016,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                ),
              ),
            ),
            SizedBox(height: height*0.04,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Adress"),
                  labelStyle: TextStyle(color: Colors.black38),
                  hintText: "Sukabumi, Indonesia        ",
                  hintStyle: TextStyle(
                    fontSize: height * 0.016,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
