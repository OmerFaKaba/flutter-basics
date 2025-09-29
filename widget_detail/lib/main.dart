import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  // --> ctr+shift+R -> statefulwidget
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "DTech"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"), // --> AppBardaki yazı
          centerTitle: true, // --> AppBardaki yazıyı ortalar
          backgroundColor: Colors.deepOrange, // --> Appbardaki yaznın rengi
          leading: const Text(
            "Menu",
          ), // --> AppBardan önce gelen genellikle menü butonu için kullanılan yer
        ),
        body: Center(
          child: Image.asset("assets/images/image-1.jpg"),
          /*Image(image: AssetImage("assets/images/image-1.jpg")),*/
          /*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text(
                "Eğitim",
                style: TextStyle(
                  //fontFamily: "DTech",
                  // --> Yazı Stili
                  fontSize: 40, // -->  yazı büyüklüğü
                  fontWeight: FontWeight.w700, // --> yazı kalınlığı
                  letterSpacing: 10, // --> harfler arasındaki boşluklar
                  //color: Colors.deepOrange[600], // --> yazı rengi [koyuluk]
                  backgroundColor: HexColor(backgroundColor),
                  color: HexColor(
                    primaryColor,
                  ), // --> color hunt--ctr+space + enter auto import color file
                ),
              ), //GoogleFonts.acme(fontSize:40,)
            ],
          ),*/
        ), // --> Center Widget
        floatingActionButton: FloatingActionButton(
          // --> Buton Widget
          onPressed: () {
            setState(() {
              value = value + 1;
            });
          }, // --> Buton fonksiyonu
          child: Text("+"), // -->  Buton yazısı
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Test> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // --> Center Widget
          child: Column(
            // --> kolon
            mainAxisAlignment: MainAxisAlignment.center, // --> Merkese alignla
            children: [
              Text(value.toString()), // --> ekrana value yazdır
              ElevatedButton(
                // -->valuenin altına buton ekle
                onPressed: () {
                  // --> basılma fonskiyonu
                  setState(() {
                    value =
                        value +
                        1; // -->valuenin dinamik bir şekilde değiştirlmesi
                  });
                  //print(value);
                },
                child: const Text("bana tıkla"), // --> butondaki yazı
              ),
            ],
          ),
        ),
      ),
    );
  }
}
