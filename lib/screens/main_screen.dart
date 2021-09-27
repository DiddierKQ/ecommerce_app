import 'package:ecommerce_app/screens/account_screen.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _index = 0;
  final _screens = const [
    HomeScreen(),
    CartScreen(),
    AccountScreen(),
    Text("hello"),
  ];

  _changeIndex(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      //drawer: const SidebarWidget(),
      appBar: AppBarWidget(title: "Coffee shop", enableReturnButton: true,),
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFd2c4a8),
        onTap: _changeIndex,
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 28,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 28,
              ),
              label: "Settings"),
        ],
        unselectedLabelStyle: const TextStyle(fontSize: 20),
        selectedLabelStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        unselectedItemColor: const Color(0xFF525347),
        selectedItemColor: const Color(0xFF6f5015),
      ),
    );
  }
}
