import 'package:ecommerce_app/widgets/product_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCardWidget extends StatefulWidget {
  //const ProductCardWidget({ Key? key }) : super(key: key);

  String title;
  double price;
  String image;

  ProductCardWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  _ProductCardWidgetState createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, style: BorderStyle.solid),
      ),
      child: Stack(
        children: [
          Align(
            child: GestureDetector(
              onTap: () {
                Get.to(ProductDetailWidget(
                    title: widget.title,
                    price: widget.price,
                    image: widget.image));
              },
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 72,
              color: const Color(0xFF6f5015).withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 4.0, left: 16.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\$ ${widget.price.toDouble()}",
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    //color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
