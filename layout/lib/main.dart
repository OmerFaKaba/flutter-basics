import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: Text("HelloHelloHelloHello"),
            ),
          ),
          Flexible(
            child: Container(color: Colors.white, child: Text("World")),
          ),
        ],
      ),
      /* Center(
        
        child: UnconstrainedBox(
          child: Container(color: Colors.white, height: 100, width: 100),
        ),
        */
      /*
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
          child: Container(color: Colors.green),
        ),
        
      ),*/
    );
  }
}
