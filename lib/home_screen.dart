import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int x = 0;
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
          Text(DateTime.now().toString()),
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

// class MyHomePage extends StatelessWidget {
//    MyHomePage({super.key});
//     int x=20;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Introduction to Provider.."),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),),),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:() {
//           x++;
//           print(x);
//
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

