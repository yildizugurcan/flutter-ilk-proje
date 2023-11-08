import 'package:flutter/material.dart';
import 'package:flutter_proje/burc_listesi.dart';
import 'package:flutter_proje/route_generator.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
