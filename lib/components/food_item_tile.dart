import 'package:flutter/material.dart';

class FoodItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;


  FoodItemTile({
    super.key,
    required this.color,
  required this.imagePath,
  required this.itemName,
  required this.itemPrice,
    required this.onPressed,
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(color: color[100],
          borderRadius: BorderRadius.circular(24)),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(imagePath, height: 100,),

            // text
            Text(itemName),

            // button
            MaterialButton(onPressed: onPressed,
              color: color,

            child: Text(itemPrice + ' ' + '\₽', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),
            )
          ],
        ),
      ),
    );
  }
}
