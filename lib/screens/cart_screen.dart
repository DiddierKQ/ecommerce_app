import 'package:ecommerce_app/widgets/item_cart_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [        
                  ItemCardWidget(),         
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                  height: 80,
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF6f5015),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$ 20.00",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF6f5015),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF6f5015),
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  onPressed: () {},
                  child: const Text("Checkout",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}