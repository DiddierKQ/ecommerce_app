import 'package:badges/badges.dart';
import 'package:ecommerce_app/screens/edit_address_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressCardWidget extends StatefulWidget {
  const AddressCardWidget({Key? key}) : super(key: key);

  @override
  _AddressCardWidgetState createState() => _AddressCardWidgetState();
}

class _AddressCardWidgetState extends State<AddressCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(color: Colors.grey.shade200)),
        padding: const EdgeInsets.only(left: 12, top: 8, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Address (Default)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Badge(
                  elevation: 0,
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  shape: BadgeShape.square,
                  badgeColor: const Color(0xFF6f5015),
                  borderRadius: BorderRadius.circular(2),
                  badgeContent: const Text("HOME",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                "431, Commerce House, Nagindas Master, Fort",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 1,
              width: double.infinity,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(EditAddressScreen(name: "Address (Default)", type: "HOME", address: "431, Commerce House, Nagindas Master, Fort"));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.edit, size: 24, color: Color(0xFF6f5015)),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Edit",
                          style: TextStyle(
                              color: Color(0xFF6f5015), fontSize: 20)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                ),
                const Spacer(
                  flex: 3,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.delete, size: 24, color: Color(0xFF6f5015)),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Delete",
                          style: TextStyle(
                              color: Color(0xFF6f5015), fontSize: 20)),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
