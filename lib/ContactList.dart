import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List contimage = [
    'assets/images/edward.png',
    'assets/images/jasson.png',
    'assets/images/kemod.png',
    'assets/images/dasep.png',
  ];
  List contactname = [
    "Edwardo",
    "Jasson",
    "kemod",
    "Dasep",
  ];
  List image = [
    'assets/images/D.png',
    'assets/images/B.png',
    'assets/images/R.png',
    'assets/images/E.png',
    'assets/images/S.png',
    'assets/images/N.png',
  ];
  List name = [
    "Diani Otelanis Teori",
    "Bahrun ST",
    "Ririn Panjaitan spd",
    "Eki Sulungpati Mpd",
    "Septiani Destri seulo",
    "Nunu Eksitin",
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        selectedItemColor: Color(0xffFB847C),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        elevation: 4,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gradient_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: Column(
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
                    width: width * 0.18,
                  ),
                  Text(
                    "Contact",
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
              height: height * 0.06,
            ),
            Text(
              "Recent contact",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: height * 0.023,
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset(
                        contimage[index],
                        scale: 4,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      contactname[index],
                      style: TextStyle(
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Text(
              "All contact",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: height * 0.020,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                6,
                (index) => Container(
                  height: height*0.08,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 1,vertical: 2),
                    horizontalTitleGap: 10,
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Image.asset(
                        image[index],
                      ),
                    ),
                    title: Text(
                      name[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height * 0.014,
                      ),
                    ),
                    subtitle: Text(
                      "+62898023450",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height*0.012,
                        color: Colors.black38,
                      ),
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
