import 'package:flutter/material.dart';
import 'package:free_money_transfer_app/ConfirmWithdraw.dart';

class WithDraw extends StatefulWidget {
  const WithDraw({Key? key}) : super(key: key);

  @override
  State<WithDraw> createState() => _WithDrawState();
}

class _WithDrawState extends State<WithDraw> {
  List<double> money = [
    05,
    10,
    15,
    20,
    50,
    100,
    500,
    1000,
  ];
  List sun_menu_color = [
    Color(0xffE1EAFF),
    Color(0xffFEE3E1),
    Color(0xffD9D0FD),
  ];
  List sub_menu_pic = [
    "assets/images/personalaccount.png",
    "assets/images/businessaccount.png",
    "assets/images/savingaccount.png",
  ];
  List sub_menu_name = [
    "Personal Account",
    "Business Account",
    "Saving Account",
  ];
  List sub_menu_number = [
    "**** *** 2878",
    "**** *** 3720",
    "**** *** 3980",
  ];
  int money_selection = 0;
  int wallet_type_selection = 0;
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.07),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkResponse(
                  onTap: () {
                    setState(() {});
                  },
                  child: Image.asset('assets/images/Back.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Spacer(),
                ),
                Center(
                  child: Text(
                    "Withdarw",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.023,
                      color: Color(0xff011A51),
                    ),
                  ),
                ),
                SizedBox(),
              ],
            ),
            SizedBox(height: height * 0.04),
            Text(
              "Amount",
              style: TextStyle(
                fontSize: height * 0.020,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.04),
            Center(
              child: Text(
                "\$${money[selected].toDouble()}",
                style: TextStyle(
                  fontSize: height * 0.030,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Center(
              child: Text(
                "Your Balance \$9840.50",
                style: TextStyle(
                  fontSize: height * 0.014,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            SliderTheme(
              data: SliderThemeData(
                inactiveTickMarkColor: Colors.white,
                activeTrackColor: Color(0xffff897e),
                thumbColor: Color(0xffff897e),
                inactiveTrackColor: Colors.white70,
              ),
              child: Slider.adaptive(
                value: money[selected].toDouble(),
                min: 1,
                max: 1000,
                divisions: 100,
                onChanged: (value) {
                  setState(() {
                    money[selected] = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: height * 0.25,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        InkResponse(
                          onTap: () {
                            setState(
                              () {
                                selected = index;
                              },
                            );
                          },
                          child: Container(
                            height: height * 0.07,
                            width: height * 0.08,
                            decoration: BoxDecoration(
                              color: selected == index
                                  ? Color(0xffff897e)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: selected == index
                                    ? Colors.transparent
                                    : Colors.black12,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "\$${money[index].toDouble().toStringAsFixed(0)}",
                                style: TextStyle(
                                  color: selected == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: height * 0.019,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Bank Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * 0.020,
                  ),
                ),
                Spacer(),
                Text(
                  "Add",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * 0.015,
                  ),
                ),
              ],
            ),
            Column(
              children: List.generate(
                3,
                (index) => InkResponse(
                  onTap: () {
                    setState(
                      () {
                        wallet_type_selection = index;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmWithdraw(),
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.06,
                          width: height * 0.07,
                          margin: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: sun_menu_color[index],
                            image: DecorationImage(
                              image: AssetImage(sub_menu_pic[index]),
                            ),
                          ),
                        ),
                        SizedBox(width: height * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sub_menu_name[index],
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: height * 0.016,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 0.004),
                            Text(
                              sub_menu_number[index],
                              style: TextStyle(
                                color: Color(0xff9caeb8),
                                wordSpacing: 4,
                                fontSize: height * 0.013,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: height * 0.032,
                          width: height * 0.032,
                          decoration: BoxDecoration(
                            color: wallet_type_selection == index
                                ? Color(0xffff897e)
                                : Color(0xffCFCFCF),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container(
                              height: height * 0.03,
                              width: height * 0.03,
                              decoration: BoxDecoration(
                                  color: wallet_type_selection == index
                                      ? Color(0xffff897e)
                                      : Color(0xffAAAAAA),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.check,
                                size: 15,
                                color: wallet_type_selection == index
                                    ? Colors.white
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
