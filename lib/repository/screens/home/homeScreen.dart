import 'package:blinkit/repository/widgeets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  final data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"}
  ];
  final categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
  ];
  final grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              color: Color(0XFFEC0505),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Uihelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14),
                      Uihelper.CustomText(
                          text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14)
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController))
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.white,
        ),
        Container(
          height: 196,
          width: double.infinity,
          color: Color(0XFFEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Uihelper.CustomImage(img: "image 60.png"),
                  Uihelper.CustomImage(img: "image 55.png"),
                  Uihelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "bold"),
                  Uihelper.CustomImage(img: "image 55.png"),
                  Uihelper.CustomImage(img: "image 61.png")
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 1, bottom: 1),
                        child: Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Uihelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10),
                              Uihelper.CustomImage(
                                  img: data[index]["img"].toString())
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 108,
                        width: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Uihelper.CustomImage(
                            img: categroy[index]["img"].toString()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Uihelper.CustomText(
                          text: categroy[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 8),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(children: [
                        Uihelper.CustomImage(img: "timer 4.png"),
                        Uihelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.normal, fontsize: 10)
                      ],),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Row(children: [
                        Uihelper.CustomImage(img: "image 50 (1).png"),
                        Uihelper.CustomText(text: "79", color: Color(0XFF9C9C9C), fontweight: FontWeight.bold, fontsize: 15)

                      ],),
                    )
                  ],
                );
              },
              itemCount: categroy.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold")
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB)),
                        child: Uihelper.CustomImage(
                            img: grocerykitchen[index]["img"].toString()),
                      ),
                    ),
                    Uihelper.CustomText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10)
                  ],
                );
              },
              itemCount: grocerykitchen.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    ));
  }
}