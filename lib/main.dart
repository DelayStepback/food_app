import 'package:flutter/material.dart';
import 'package:food_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

import 'models/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CartModel(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
    );
  }
}
