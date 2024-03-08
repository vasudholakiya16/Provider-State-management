import 'dart:async';

import 'package:flutter/material.dart';
class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  int x = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 6) , (timer) {
      x++;
      print(x);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {

    print("Have a nice day");
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center
        ,
        children: [
          // Text(DateTime.now().toString()),
          Container(
            child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          x++;
          print(x);
          setState(() {

          });

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
