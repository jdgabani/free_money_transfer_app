import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List yesteimage = [
    'assets/images/Shopping03.png',
    'assets/images/Voucher04.png',
    'assets/images/Grab Pay05.png',
    'assets/images/Game TopUp06.png',
    'assets/images/Add card07.png',
  ];
  List name1 = [
    "Shopping",
    "Voucher",
    "Grab Pay",
    "Game Top up",
    "Add card",
  ];
  List name2 = [
    " You shop for shoes",
    " You pay the electric",
    " You pay the Grab pay",
    " You pay the Game",
    " You have add card stela",
  ];
  List name3 = [
    "on Gemolis.com",
    "voucher amount \$10",
    "amount \$15",
    "top up amount\$10",
    "bank",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
            child: InkResponse(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Back.png'),
                  SizedBox(width: width * 0.24),
                  Center(
                    child: Text(
                      "Notification",
                      style: TextStyle(
                        fontSize: height * 0.020,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.020),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Recent",
              style: TextStyle(
                fontSize: height * 0.021,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.0014,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 4),
              horizontalTitleGap: 5,
              leading: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Image.asset('assets/images/jaydeep.png'),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transfer",
                    style: TextStyle(
                      color: Color(0xffFF897E),
                      fontSize: height * 0.017,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Text(
                    "You have transferred an",
                    style: TextStyle(
                      color: Color(0xffA6A2A2),
                      fontSize: height * 0.017,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                "amount \$876 to Jasson sterek",
                style: TextStyle(
                  color: Color(0xffA6A2A2),
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 4),
              horizontalTitleGap: 5,
              leading: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Image.asset('assets/images/Top Up02.png'),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Up",
                    style: TextStyle(
                      color: Color(0xffFF897E),
                      fontSize: height * 0.017,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Text(
                    "You have top up an",
                    style: TextStyle(
                      color: Color(0xffA6A2A2),
                      fontSize: height * 0.017,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                "amount \$20 to shoppe pay",
                style: TextStyle(
                  color: Color(0xffA6A2A2),
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.030,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Yesterday",
              style: TextStyle(
                fontSize: height * 0.021,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Column(
            children: List.generate(
              5,
              (index) => Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ListTile(
                        horizontalTitleGap: 5,
                        leading: Image.asset(
                          yesteimage[index],
                        ),
                        title: Row(
                          children: [
                            Text(
                              name1[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:height*0.017,
                                color: Color(0xffFF897E),
                              ),
                            ),
                            SizedBox(width: width*0.007,),
                            Text(
                              name2[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:height*0.017,
                                color: Color(0xffA6A2A2),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(name3[index],style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize:height*0.017,
                          color: Color(0xffA6A2A2),
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
