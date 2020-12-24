import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';

class RecentOrder extends StatelessWidget {
  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.grey[200])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
                      child: Row(
              
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    height: 120,
                    width: 120,
                    image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
        Expanded(
                    child: Container(
              margin: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(order.food.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900), overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 4,),
                  Text(order.restaurant.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis ,),
                  SizedBox(height: 4,),
                  Text(order.date,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),

                  
                ],
              ),
            ),
        ),
              ],
            ),
          ),
      Container(
        margin: EdgeInsets.only(right: 20),
        width:  48,
        decoration: BoxDecoration(
          color:  Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30)
        ),
      child: IconButton(icon: Icon(Icons.add),
      iconSize: 30,
      color: Colors.white,
      onPressed: (){

      },
      ),
      ),
        ],
      ),
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent Order',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.7),
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: currentUser.orders.length,
                itemBuilder: (BuildContext context, int index) {
                  Order order = currentUser.orders[index];
                  return _buildRecentOrder(context, order);
                }),
          ),
        ],
      ),
    );
  }
}
