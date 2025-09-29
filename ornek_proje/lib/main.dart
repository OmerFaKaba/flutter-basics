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
        backgroundColor: const Color.fromARGB(255, 100, 3, 3),
        appBar: AppBar(
          title: Text(
            "Uygulamam",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.deepPurpleAccent,
            ),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
        ),
        body: /*Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPpAh63HncAuJOC6TxWkGLYpS0WwNXswz9MA&s",
          width: 300,
          height: 50,
          fit: BoxFit.cover,
        ),*/ Center(
          child: Column /*Row*/ (
            /*
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/images/fb_image.png", width: 200),
              SizedBox(height: 50, width: 50),
              Text("Merhaba"),
              SizedBox(height: 50, width: 50),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPpAh63HncAuJOC6TxWkGLYpS0WwNXswz9MA&s",
                width: 300,
              ),
            ],*/
            children: [
              ElevatedButton(
                onPressed: () => print("Bana tıkladın"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: Text(
                  "Bana Tıkla",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: Text("Tıkla Bana")),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.red,
                size: 40,
              ),
            ],
          ),
        ),
        /*Text("merhaba")*/
      ),
    );
  }
}
