import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      alignment: Alignment.center,
      height: 60,
      //flex: 1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color(0xFF6f5015),
              ),
              onPressed: () {},
              child: const Text('Most saled',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color(0xFF6f5015),
              ),
              onPressed: () {},
              child: const Text('Favorite',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color(0xFF6f5015),
              ),
              onPressed: () {},
              child: const Text('Promotions',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color(0xFF6f5015),
              ),
              onPressed: () {},
              child: const Text('Coffee',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color(0xFF6f5015),
              ),
              onPressed: () {},
              child: const Text('Cold drinks',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
