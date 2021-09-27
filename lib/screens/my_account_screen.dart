import 'package:ecommerce_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: "My account", enableReturnButton: true),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(32.0),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        maxRadius: 120,
                        backgroundImage:
                            AssetImage("assets/images/users/my_profile.jpg"),
                      ),
                      Positioned(
                        bottom: 0,
                        //right: 0,
                        left: 160,
                        child: ClipOval(
                          child: Container(
                            padding: const EdgeInsets.all(3.0),
                            color: Colors.white,
                            child: ClipOval(
                              child: Container(
                                color: const Color(0xFF6f5015),
                                padding: const EdgeInsets.all(16.0),
                                child: const Icon(
                                Icons.camera_alt_outlined, size: 32, color: Colors.white,
                              ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
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
                            controller: TextEditingController(text: "Diddier"),
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
                            "Last name",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            keyboardType: TextInputType.text,
                            controller: TextEditingController(text: "Kantun"),
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
                            "Email address",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            keyboardType: TextInputType.text,
                            controller: TextEditingController(
                                text: "Diddier.kantun@gmail.com"),
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
                        child: const Text('Save changes',
                            style:
                                TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: const Text(
                          "Change password",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF6f5015),
                          ),
                        ),
                        onPressed: () {},
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
