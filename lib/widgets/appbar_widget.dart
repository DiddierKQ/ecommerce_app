import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget with PreferredSizeWidget{

  String title;
  bool enableReturnButton;

  AppBarWidget({Key? key, 
    required this.title,
    this.enableReturnButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(    
      backgroundColor: const Color(0xFF6f5015),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      automaticallyImplyLeading: enableReturnButton, // Avoid the return button on android devices
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}