import 'package:flutter/material.dart';

class ProfileGeneral extends StatefulWidget {
  const ProfileGeneral({Key? key}) : super(key: key);

  @override
  State<ProfileGeneral> createState() => _ProfileGeneralState();
}

class _ProfileGeneralState extends State<ProfileGeneral> {
  List leading = [
    'assets/images/Security.png',
    'assets/images/help.png',
    'assets/images/privacy policy.png',
  ];
  List title = [
    "Security",
    "Help",
    "Privacy Policy",
  ];
  List subtitle=[
    "Your Password Acount",
    "Need More Help",
    "Your Password Acount",
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/images/Back.png')),
                  SizedBox(
                    width: width * 0.24,
                  ),
                  Text(
                    "Profile",
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
              height: height * 0.05,
            ),
            Center(
              child: Container(
                height: height * 0.090,
                width: height * 0.090,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/girlImage.png"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                "Rene Wells",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.022,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.0070,
            ),
            Center(
              child: Text(
                "Roday43@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.015,
                  color: Colors.black26,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.73,
                    decoration: BoxDecoration(
                      color: Color(0xffFB847C),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                "\$3460",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.023,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              RotatedBox(
                                quarterTurns: 1,
                                child: Divider(
                                    color: Colors.white60, thickness: 1.2),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Outcome",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                "\$2500",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.023,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.070),
            Text(
              "General",
              style: TextStyle(
                fontSize: height * 0.022,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.020),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                3,
                (index) => Container(
                  height: height * 0.090,
                  width: width * 0.9,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      leading[index],
                      scale: 4,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height * 0.014,
                            ),
                          ),
                          SizedBox(height: height*0.005,),
                          Text(
                            subtitle[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.012,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Icon(Icons.arrow_forward_ios_outlined,size: height*0.030,color: Colors.black12,),
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
