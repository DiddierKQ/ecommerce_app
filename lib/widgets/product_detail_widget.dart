import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailWidget extends StatefulWidget {
  //const ProductDetailWidget({ Key? key }) : super(key: key);

  String title;
  double price;
  String image;

  ProductDetailWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  _ProductDetailWidgetState createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget> {

  int cantidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Product details",enableReturnButton: true,),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          width: double.infinity,
          height: 880,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
                  child: Image.asset(
                    widget.image,
                  ),
                ),
              ),             
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 32.0, right: 32.0, top: 8.0, bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    widget.title,
                                    style: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                const Icon(Icons.favorite_border,
                                    color: Colors.grey, size: 40),
                              ],
                            ),
                          ),                         
                          Container(
                            padding:
                                const EdgeInsets.only(
                                left: 32.0, right: 32.0, top: 8.0, bottom: 12.0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.normal,color: Colors.grey, ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(
                                left: 32.0,
                                right: 32.0,
                                top: 4.0,
                                bottom: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 32),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 32),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 32),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 32),
                                    Icon(Icons.star,
                                        color: Colors.grey, size: 32),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      "(245)",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.grey),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(
                                left: 32.0,
                                right: 32.0,
                                top: 4.0,
                                bottom: 12.0),
                            child: Row(
                              children: [
                                Text(
                                  "\$ ${widget.price.toDouble()}",
                                  style: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 32.0,
                                right: 32.0,
                                top: 4.0,
                                bottom: 4.0),
                            alignment: Alignment.topLeft,
                            //color: Colors.yellow,
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onLongPress: null,
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(12.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                    backgroundColor: const Color(0xFF6f5015),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      cantidad--;
                                      if (cantidad < 1) {
                                        cantidad = 1;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.remove,
                                      color: Colors.white),
                                ),                               
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      cantidad.toString(),
                                      style:
                                          const TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                 OutlinedButton(
                                  onLongPress: null,
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.all(12.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                    backgroundColor: const Color(0xFF6f5015),
                                  ),                                 
                                  onPressed: () {
                                    setState(() {
                                      cantidad++;
                                    });
                                  },
                                  child: const Icon(Icons.add,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),                    
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0xFF6f5015),
                          minimumSize: const Size(double.infinity, 68),
                        ),
                        onPressed: () {},
                        child: const Text('ADD TO CART',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
