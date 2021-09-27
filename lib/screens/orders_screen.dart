import 'package:badges/badges.dart';
import 'package:ecommerce_app/screens/order_detail_screen.dart';
import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({ Key? key }) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "My orders", enableReturnButton: true),
      body: Container(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(OrderDetailScreen(folio: "023568241",date: "02/05/2020", status: "Complete"));
                    },
                    leading: const Icon(Icons.check_box, color: Colors.green,),
                    title: const Text(
                      "Order: 023568241",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      "02/05/2020",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Badge(
                      elevation: 0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      shape: BadgeShape.square,
                      badgeColor: Colors.green,
                      borderRadius: BorderRadius.circular(2),
                      badgeContent: const Text('Completed',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(OrderDetailScreen(
                          folio: "023556824",
                          date: "22/05/2020",
                          status: "Complete"));
                    },
                    leading: const Icon(
                      Icons.check_box,
                      color: Colors.green,
                    ),
                    title: const Text(
                      "Order: 023556824",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      "22/05/2020",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Badge(
                      elevation: 0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      shape: BadgeShape.square,
                      badgeColor: Colors.green,
                      borderRadius: BorderRadius.circular(2),
                      badgeContent: const Text('Completed',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(OrderDetailScreen(
                          folio: "222563958",
                          date: "26/09/2021",
                          status: "In process"));
                    },
                    leading: const Icon(
                      Icons.watch_later_rounded,
                      color: Colors.amber,
                    ),
                    title: const Text(
                      "Order: 222563958",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      "26/09/2021",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Badge(
                      elevation: 0,
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      shape: BadgeShape.square,
                      badgeColor: Colors.amber,
                      borderRadius: BorderRadius.circular(2),
                      badgeContent: const Text('In process',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
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
}