import 'package:blinkit/repository/screens/Bottomnav/bottomNavScreen.dart';
import 'package:blinkit/repository/widgeets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Uihelper.CustomImage(img: "loginn.jpg"),
          SizedBox(height: 10),
          Container(
            child: Uihelper.CustomImage(
              img: "blinkit-logo-png_seeklogo-438944.png",
            ),
            height: 100,
            width: 100,
          ),
          SizedBox(height: 20),
          Uihelper.CustomText(
            text: "India's last minute app",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 20,
            fontfamily: "bold",
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            child: Container(
              height: 200,
              width: 350,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFFFFFFF),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Uihelper.CustomText(
                    text: "Anand",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.w500,
                    fontsize: 14,
                  ),
                  SizedBox(height: 5),
                  Uihelper.CustomText(
                    text: "9876543210",
                    color: Color(0XFF9C9C9C),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold",
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 48,
                    width: 295,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottomnavscreen() ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFFE23744),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Uihelper.CustomText(
                            text: "login with",
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold",
                          ),
                          SizedBox(width: 10),
                          Uihelper.CustomText(
                            text: "zomato",
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.w700,
                            fontsize: 22,
                            fontfamily: "Italic",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Uihelper.CustomText(
                    text:
                        "Access your saved addresses from Zomato automatically!",
                    color: Color(0XFF9C9C9C),
                    fontweight: FontWeight.normal,
                    fontsize: 10,
                  ),
                  SizedBox(height: 15),
                  Uihelper.CustomText(
                    text: "or login with phone number",
                    color: Color(0XFF269237),
                    fontweight: FontWeight.normal,
                    fontsize :14,
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
