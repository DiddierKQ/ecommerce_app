import 'package:flutter/material.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget({ Key? key }) : super(key: key);

  @override
  _ItemCardWidgetState createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 132,
                height: 132,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    color: const Color(0xFF6f5015).withOpacity(0.4),
                    image: const DecorationImage(
                        image:
                            AssetImage("assets/images/products/product3.png"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8, top: 4),
                        child: const Text(
                          "Original coffee",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$ 10.00",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                               children: [                                 
                                const Icon(
                                  Icons.remove,
                                  size: 28,
                                  color: Color(0xFF6f5015),
                                ),
                                Container(                                   
                                  padding: const EdgeInsets.only(
                                      bottom: 2, right: 12, left: 12),
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Color(0xFF6f5015),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10, top: 8),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 24,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.red),
          ),
        )
      ],
    );
  }
}