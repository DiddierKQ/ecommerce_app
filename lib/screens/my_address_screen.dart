import 'package:ecommerce_app/screens/add_address_screen.dart';
import 'package:ecommerce_app/widgets/address_card_widget.dart';
import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  _MyAddressScreenState createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBarWidget(
        title: "My addresses",
        enableReturnButton: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: ListView(
          children: const [
             AddressCardWidget(),          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6f5015),
        foregroundColor: Colors.white,
        onPressed: () {
          Get.to(const AddAddressScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LisView {
}
