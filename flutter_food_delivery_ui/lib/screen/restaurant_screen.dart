import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/Widgets/rating_star.dart';
import 'package:flutter_food_delivery_ui/models/food.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({this.restaurant});
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  _buildMenuIteam(Food menuIteam) {
    //Menu Design
    return Center(
        child: Stack( 
          alignment: Alignment.center,
      children: [
        Container(
          height: 165,
          width: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(menuIteam.imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          height: 165,
          width: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black87.withOpacity(0.3),
                Colors.black54.withOpacity(0.3),
                Colors.black38.withOpacity(0.3),
              ],
              stops: [0.1, 0.4, 0.6, 0.9],
            ),
          ),
        ),
        Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              menuIteam.name,
              style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.2),
            ),
            Text(
            '\$${menuIteam.price}',
              style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.2),
            ),
          ],
        ),
        Positioned(
          bottom: 14,
          right: 10,
          child: Container(
            
        
        width:  44,
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
        )
      ],
    ));
  }
// upper design(resturantphoto,resturantname 2Button)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  image: AssetImage(widget.restaurant.imageUrl),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      color: Colors.white,
                      iconSize: 35,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      iconSize: 35,
                      color: Theme.of(context).primaryColor,
                      onPressed: () => {Navigator()},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '0.2 miles away',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                RatingStars(widget.restaurant.rating),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Menu',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              children: List.generate(
                widget.restaurant.menu.length,
                (index) {
                  Food food = widget.restaurant.menu[index];
                  return _buildMenuIteam(food);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
