import 'package:flutter/material.dart';
import 'package:food_app/models/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/food_item_tile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CartPage();
            })),
        backgroundColor: Colors.black,
      child: Icon(Icons.shopping_cart_outlined),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40.0),


            // Day quote

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(textAlign: TextAlign.left,

                  'Аппетит приходит во время еды – особенно если едите не вы.', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20,)),
            ),
            
            SizedBox(height: 4,),
            
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Jan Go Food', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36,),
            )),
            SizedBox(height: 24,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),

            const SizedBox(height: 24,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Меню', style: TextStyle(fontSize: 24),),
            ),
            Expanded(
                child: Consumer<CartModel>(
                  builder: (context, value, child){
                    return GridView.builder(
                        itemCount: value.shopItems.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1/ 1.25,
                        ),
                        itemBuilder: (context, index) {
                          return FoodItemTile(
                            itemName: value.shopItems[index][0],
                            itemPrice: value.shopItems[index][1],
                            imagePath: value.shopItems[index][2],
                            color: value.shopItems[index][3],
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                            },
                          );
                        } );
                  }
                )

            )
          ],
        ),
      )
    );
  }
}
