import 'package:flutter/material.dart';

class Milk extends StatefulWidget {
  const Milk({super.key});

  @override
  State<Milk> createState() => _MilkState();
}

class _MilkState extends State<Milk> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Color(0xFFF5F5F5),
                child: Image.asset(
                  "assets/images/milk.png",
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 50,
                left: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),

        
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                   
                    Text(
                      "🕐 8 mins delivery",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),

                    SizedBox(height: 6),

                    
                    Text(
                      "Full Cream Fresh Milk",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 6),

                    // Weight
                    Text(
                      "500 ml",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),

                    SizedBox(height: 10),

                  
                    Row(
                      children: [
                        Text(
                          "₹28",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "MRP ₹32",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Replacement Policy Box
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.replay, color: Colors.black),
                          SizedBox(width: 10),
                          Text("48 Hours Replacement"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 14),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    
                    Text(
                      "Top products in this category",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ProductCard(img: "potato.png", name: "Potato", price: "₹28"),
                          SizedBox(width: 10),
                          ProductCard(img: "tomato.png", name: "Tomato", price: "₹52"),
                          SizedBox(width: 10),
                          ProductCard(img: "image 57.png", name: "Sweet", price: "₹75"),
                        ],
                      ),
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),


      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          children: [

          
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "500 ml",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                Text(
                  "₹28  MRP ₹32",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Inclusive of all taxes",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),

            Spacer(),

            
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF27AF34),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [

                 
                  IconButton(
                    onPressed: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity = quantity - 1;
                        });
                      }
                    },
                    icon: Icon(Icons.remove, color: Colors.white, size: 18),
                  ),

                  
                  Text(
                    "$quantity",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  // Plus button
                  IconButton(
                    onPressed: () {
                      setState(() {
                        quantity = quantity + 1;
                      });
                    },
                    icon: Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductCard extends StatelessWidget {
  final String img;
  final String name;
  final String price;

  const ProductCard({
    required this.img,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [

          
          Image.asset(
            "assets/images/$img",
            height: 70,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.image, size: 50, color: Colors.grey);
            },
          ),

          SizedBox(height: 6),

          
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),

          SizedBox(height: 4),

          
          Text(
            price,
            style: TextStyle(
              color: Color(0xFF27AF34),
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),

          SizedBox(height: 6),

        
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF27AF34)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
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
    );
  }
}