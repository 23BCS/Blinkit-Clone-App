import 'package:blinkit/repository/screens/product%20screens/potato.dart';

import '../product screens/milk.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
               decoration: const BoxDecoration(
                color: Color(0xFFF7CB45),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 52, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              
                  Row(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blinkit in",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "16 minutes",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, size: 14),
                              SizedBox(width: 4),
                              Text(
                                "HOME - Anand, Kharar, Punjab",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Spacer(),

                      // Right: person icon
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: Colors.black),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Search Bar
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search 'ice cream'",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        prefixIcon: Icon(Icons.search, color: Color(0xFF27AF34)),
                        suffixIcon: Icon(Icons.mic_outlined, color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [

                  
                  Image.asset(
                    "assets/images/cart.png",
                    height: 100,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.shopping_cart_outlined,
                          size: 80, color: Colors.grey[300]);
                    },
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Reordering will be easy",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 6),

                  Text(
                    "Items you order will show up here so you\ncan buy them again easily.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

           
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Bestsellers",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 12),

            // ── Bestseller Cards ──
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Milk()),
                      );
                    },
                    child: BestsellerCard(
                      img: "milk.png",
                      name: "Full Cream Milk",
                      weight: "500 ml",
                      price: "₹28",
                    ),
                  ),

                  SizedBox(width: 12),

                  InkWell(
                    onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Potato())
                    ),
                    child: BestsellerCard(
                      img: "potato.png",
                      name: "Fresh Potatoes",
                      weight: "1 kg",
                      price: "₹39",
                    ),
                  ),

                  SizedBox(width: 12),

                  BestsellerCard(
                    img: "tomato.png",
                    name: "Red Tomatoes",
                    weight: "500 g",
                    price: "₹22",
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

         
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF27AF34),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [

                  // Text on left
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Free delivery",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "On first order above ₹99",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),

                  Spacer(),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        color: Color(0xFF27AF34),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class BestsellerCard extends StatelessWidget {
  final String img;
  final String name;
  final String weight;
  final String price;

  const BestsellerCard({
    required this.img,
    required this.name,
    required this.weight,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Image area
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/$img",
                    height: 75,
                    fit: BoxFit.contain,
                  ),
                ),

                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFF27AF34)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        color: Color(0xFF27AF34),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2),
                Text(
                  weight,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}