import 'package:pa_market_farmer/custom_objects/order.dart';

class OrdersList {
  static final List<Order> _list = [
    Order(
        name: 'Tomatoes', status: 'complete',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'cancelled',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'in progress',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
  ];

  static List<Order> getList() {
    return _list;
  }
}