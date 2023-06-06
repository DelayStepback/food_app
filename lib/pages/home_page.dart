import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40.0),


            // Day quote

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(textAlign: TextAlign.left,

                  'Some day quote', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20,)),
            ),
            
            SizedBox(height: 4,),
            
            Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Some day quote', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36,),
            )),



          ],
        ),
      )
    );
  }
}
