import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // logo
            Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, bottom: 80, top: 150),
          child: Image.asset('lib/icons/bibimbap.png'),
        ),

        // greating text
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Хорошее время, чтобы вкусно поесть",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        // subtitle
        const Text("Доброе утро",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),

        const Spacer(),
        // get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context){
                return HomePage();
              })),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Войти',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
