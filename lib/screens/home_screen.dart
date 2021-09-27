import 'package:ecommerce_app/widgets/category_widget.dart';
import 'package:ecommerce_app/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 8.0),
          const CategoryWidget(),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product1.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product2.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product3.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product4.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product5.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product6.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product7.png",
                  ),
                  ProductCardWidget(
                    title: "Original coffee",
                    price: 10,
                    image: "assets/images/products/product8.png",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
