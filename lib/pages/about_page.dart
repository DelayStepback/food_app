import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // credits
          children: [
            Text("Credits: DelayStepBack", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 20,
            ),),
            Text("</3", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 15
            ),),
            Text("https://github.com/DelayStepback/", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),)
          ],

        ),
      ),
    );
  }
}
