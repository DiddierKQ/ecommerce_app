import 'package:ecommerce_app/screens/my_account_screen.dart';
import 'package:ecommerce_app/screens/my_address_screen.dart';
import 'package:ecommerce_app/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {
                    Get.to(const MyAccountScreen());
                  },
                  leading: const Icon(Icons.account_circle_outlined),
                  title: const Text(
                    "My account",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    "Account configurations",
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Get.to(const MyAccountScreen());
                      },
                      icon: const Icon(Icons.arrow_forward),),
                ),
                ListTile(                 
                  leading: const Icon(
                    Icons.notifications_active_outlined,
                    size: 28,
                  ),
                  title: const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    "Turn on/off the notifications.",
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: const Color(0xFFab8258),
                    activeColor: const Color(0xFF6f5015),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const OrdersScreen());
                  },                 
                  leading: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 28,
                  ),
                  title: const Text(
                    "My orders",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    "Manage orders.",
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Get.to(const OrdersScreen());
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const MyAddressScreen());
                  },
                  leading: const Icon(
                    Icons.maps_home_work_outlined,
                    size: 28,
                  ),
                  title: const Text(
                    "My addresses",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: const Text(
                    "Manage delivery addresses.",
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Get.to(const MyAddressScreen());
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.payment_outlined,
                    size: 28,
                  ),
                  title: Text(
                    "Payment methods",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    "Manage payment methods.",
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}
