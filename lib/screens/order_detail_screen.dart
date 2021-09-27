import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class OrderDetailScreen extends StatefulWidget {
  //const OrderDetailScreen({Key? key}) : super(key: key);

  String folio;
  String status;
  String date;
  var color = Colors.green;

  OrderDetailScreen({
    Key? key,
    required this.folio,
    required this.status,
    required this.date,
  }) : super(key: key);

  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Order details", enableReturnButton: true),
      body: Container(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text(
                      "Order: ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    subtitle: Text(
                      widget.date,
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: Text(
                      widget.folio,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Status: ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    trailing: Badge(
                      elevation: 0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      shape: BadgeShape.square,
                      badgeColor: validateStatus(widget.status),
                      borderRadius: BorderRadius.circular(2),
                      badgeContent: Text(widget.status,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "Delivery: ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    subtitle: Text(
                      "1 Hamilton Road, Windle, WA10 6HH",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "CART ITEMS: ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6f5015),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/products/product5.png",
                        width: 80, height: 80),
                    title: const Text(
                      "Milkshake coffee",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    subtitle: const Text(
                      "Large ice coffee with milk.",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Text(
                      "\$ 10",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("assets/images/products/product7.png",
                        width: 80, height: 80),
                    title: const Text(
                      "Frappuccino",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    subtitle: const Text(
                      "Large ice coffee with milk.",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Text(
                      "\$ 10",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF6f5015),
              height: 80,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Total:",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$ 20.00",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  validateStatus(String status) {
    return (status) == "Complete" ? Colors.green : Colors.amber;
  }
}
