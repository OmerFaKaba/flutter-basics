import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatelessWidget {
  const Uygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Roboto"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Uygulamam",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 4, color: Colors.black),
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                      spreadRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Ruwis",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset("assets/images/fb_image.png", width: 100),
              ),
              SizedBox(
                width: 200,
                height: 80,
                child: Card(
                  color: Colors.black,
                  elevation: 3,
                  child: Align(child: Text("MErhaba")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
