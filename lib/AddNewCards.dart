import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/CommonButton.dart';
import 'package:free_money_transfer_app/ScanYourCard.dart';

class AddNewCards extends StatefulWidget {
  const AddNewCards({Key? key}) : super(key: key);

  @override
  State<AddNewCards> createState() => _AddNewCardsState();
}

class _AddNewCardsState extends State<AddNewCards> {
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkResponse(
                        onTap: () {},
                        child: Image.asset('assets/images/Back.png')),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    Text(
                      "Add New cards",
                      style: TextStyle(
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff011a51),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.050,
              ),
              Center(
                child: Image.asset(
                  'assets/images/Group 18317.png',
                  scale: 4.4,
                ),
              ),
              SizedBox(
                height: height * 0.090,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Card Number"),
                  labelStyle: TextStyle(color: Colors.black38),
                  hintText: "0045 4768 243 0098",
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
              SizedBox(
                height: height * 0.042,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.087,
                    width: width * 0.40,
                    color: Colors.transparent,
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: Text("Expire Date"),
                        labelStyle: TextStyle(
                            color: Colors.black38, fontSize: height * 0.020),
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
                  SizedBox(
                    width: width * 0.042,
                  ),
                  Container(
                    height: height * 0.087,
                    width: width * 0.39,
                    color: Colors.transparent,
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
                ],
              ),
              SizedBox(
                height: height * 0.042,
              ),
              TextField(
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
              SizedBox(
                height: height * 0.042,
              ),
              TextField(
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
              SizedBox(
                height: height * 0.010,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    activeColor: Color(0xffFB847C),
                    value: ischeck,
                    onChanged: (value) {
                      setState(() {
                        ischeck = value!;
                      });
                    },
                  ),
                  Text(
                    "Save card",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.017,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.014,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 62),
                child: CommonButton(
                  onpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanYourCard(),),);
                  },
                  color: Color(0xffFB847C),
                  text: "ADD CARD",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
