import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/WhatsappHome.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: new Color(0xff128C7E), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: new Color(0xff075E54)),
      ),
      home: WhatsappHome(),
    );
  }
}
