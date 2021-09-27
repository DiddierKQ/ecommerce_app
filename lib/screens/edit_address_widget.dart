import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class EditAddressScreen extends StatefulWidget {
  //const EditAddressScreen({ Key? key }) : super(key: key);

  String name;
  String type;
  String address;

  EditAddressScreen({
    Key? key,
    required this.name,
    required this.type,
    required this.address,
  }) : super(key: key);

  @override
  _EditAddressScreenState createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: "Edit address", enableReturnButton: true),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/maps.jpg"),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tag(Eg. Home, Office)",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            keyboardType: TextInputType.text,
                            controller: TextEditingController(text: widget.type),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF6f5015), width: 2.0),
                              ),
                              border: OutlineInputBorder(),
                            ),
                            //maxLines: widget.maxLines,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            keyboardType: TextInputType.text,
                            controller:
                                TextEditingController(text: widget.name),
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF6f5015), width: 2.0),
                              ),
                              border: OutlineInputBorder(),
                            ),
                            //maxLines: widget.maxLines,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Full address",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            keyboardType: TextInputType.text,
                            controller:
                                TextEditingController(text: widget.address),
                            maxLines: 4,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFF6f5015), width: 2.0),
                              ),
                              border: OutlineInputBorder(),
                            ),
                            //maxLines: widget.maxLines,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0xFF6f5015),
                          minimumSize: const Size(double.infinity, 60),
                        ),
                        onPressed: () {},
                        child: const Text("Save changes",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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