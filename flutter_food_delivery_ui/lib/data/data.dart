import 'package:flutter_food_delivery_ui/models/food.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/models/user.dart';

// Food
final _shawarma =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'shawarma', price: 8.99);
final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 17.99);
final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'Ramen', price: 13.99);
final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 14.99);
final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 11.99);
final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 12.99);

// Restaurants
final _kofuku = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  name: 'Kofuku',
  address: 'Mumbai, Maharashtra',
  rating: 5,
  menu: [
    _shawarma,
    _steak,
    _pasta,
    _ramen,
    _pancakes,
    _burger,
    _pizza,
    _salmon
  ],
);
final _kathiRolls = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpg',
  name: 'KathiRolls',
  address: 'Mumbai, Maharashtra',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _steakHouse = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpg',
  name: 'Steakhouse',
  address: 'Mumbai, Maharashtra',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _sushiStar = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'SushiStar',
  address: 'Mumbai, Maharashtra',
  rating: 2,
  menu: [_shawarma, _steak, _burger, _pizza, _salmon],
);
final _wafflesHouse = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'WafflesHouse',
  address: 'Mumbai, Maharashtra',
  rating: 3,
  menu: [_shawarma, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _kofuku,
  _kathiRolls,
  _steakHouse,
  _sushiStar,
  _wafflesHouse,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: _steak,
      restaurant: _steakHouse,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _kofuku,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _shawarma,
      restaurant: _kathiRolls,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _sushiStar,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _wafflesHouse,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _steakHouse,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _steakHouse,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _sushiStar,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _wafflesHouse,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _shawarma,
      restaurant: _kathiRolls,
      quantity: 2,
    ),
  ],
);
