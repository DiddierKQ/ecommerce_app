import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFd2c4a8),              
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(FontAwesomeIcons.home),
                    title: Text("Home",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.userAlt),
                    title: Text("Profile",
                      style: TextStyle(
                        fontSize: 20,
                      ),                    
                    ),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.shoppingCart),
                    title: Text("Cart",style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xFFd2c4a8),
            alignment: Alignment.center,
            child: const Text(
              "Developed by Diddier Kantun",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF6f5015),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
