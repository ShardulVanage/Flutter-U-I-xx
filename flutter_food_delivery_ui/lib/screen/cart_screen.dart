import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cartscreen extends StatefulWidget {
  @override
  _CartscreenState createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  _buildcartIteam(Order order) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(order.food.imageUrl),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(order.food.name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 4),
                        Text(order.restaurant.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 4),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 0.8, color: Colors.black54),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('-',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor)),
                              SizedBox(width: 16),
                              Text(order.quantity.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                  )),
                              SizedBox(width: 16),
                              Text('+',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            '\$${order.quantity * order.food.price}',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart')),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.caretSquareDown,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _buildcartIteam(order);
          }
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Delivery Time :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '30min',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Cost :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$${105.91}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
        itemCount: currentUser.cart.length + 1,
      ),
      bottomSheet: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(0, -1), blurRadius: 10)
        ]),
        child: Center(
          child: FlatButton(
            child: Text(
              'CHECKOUT',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
