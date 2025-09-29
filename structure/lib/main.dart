import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WidgetDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Widget Detail"),
          centerTitle: true,
        ),
        /*        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ornek"),
            ElevatedButton(onPressed: () {}, child: Text("Tıkla")),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.red,
              child: Text("Container"),
            ),
          ],
        ),
        */
        /*
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Örnek"),
            ElevatedButton(onPressed: () {}, child: const Text("Tıkla")),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("Container"),
            ),
          ],
        ),
        */
        /*Container(
          color: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: const Text("Ornek"),
        ),*/
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}
