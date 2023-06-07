import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: value.cartItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[400],
                                  borderRadius: BorderRadius.circular(14)),
                              child: ListTile(
                                leading: Image.asset(
                                  value.cartItems[index][2],
                                  height: 40,
                                ),
                                title: Text(
                                  value.cartItems[index][0],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(value.cartItems[index][1] + ' \₽',
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.cancel),
                                onPressed: () => Provider.of<CartModel>(context, listen: false).removeItemFromCart(index),
                                )
                              ),
                            ),
                          );
                        })),

                // total price

                Padding(

                  padding: const EdgeInsets.all(40.0),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Всего: ",
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(value.calculateTotalPrice() + ' \₽',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Text(
                                "Заказать",
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold, fontSize: 20)
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.deepPurple
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
