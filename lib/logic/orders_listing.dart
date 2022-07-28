import 'package:pa_market_farmer/custom_objects/driver.dart';
import 'package:pa_market_farmer/custom_objects/order.dart';

class OrdersList {
  static final List<Order> _list = [
    Order(
        name: 'Tomatoes', status: 'complete',
        driver: Driver(name: 'John Doe',
            phoneNumber: '+1-204-488-1439',
            driverId: '1010',
            numberFailedDeliveries: 2,
            numberOfSuccessfulDeliveries: 15,
            storageType: '4 by 4'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'cancelled',
        driver: Driver(name: 'Tony Doe',
            phoneNumber: '+1-204-488-1439',
            driverId: '1520',
            numberFailedDeliveries: 12,
            numberOfSuccessfulDeliveries: 15,
            storageType: '4 by 4'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        driver: Driver(name: 'Karen Dove',
            phoneNumber: '+1-204-488-1439',
            driverId: '1012',
            numberFailedDeliveries: 25,
            numberOfSuccessfulDeliveries: 100,
            storageType: 'Truck'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'in progress',
        driver: Driver(name: 'John Doe',
            phoneNumber: '+1-204-488-1439',
            driverId: '1010',
            numberFailedDeliveries: 2,
            numberOfSuccessfulDeliveries: 15,
            storageType: '4 by 4'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        driver: Driver(name: 'John Doe',
            phoneNumber: '+1-204-488-1439',
            driverId: '1010',
            numberFailedDeliveries: 2,
            numberOfSuccessfulDeliveries: 15,
            storageType: '4 by 4'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
    Order(
        name: 'Tomatoes', status: 'complete',
        driver: Driver(name: 'John Doe',
            phoneNumber: '+1-204-488-1439',
            driverId: '1010',
            numberFailedDeliveries: 2,
            numberOfSuccessfulDeliveries: 15,
            storageType: '4 by 4'
        ),
        amount: 10, deliveryAddress: '1515 some street ',
        networkUrl: 'https://media.gettyimages.com/photos/tomatoes-picture-id98026003?k=20&m=98026003&s=612x612&w=0&h=jow4hWqRbs5ULBWTszd9Ih1YDx88klSa_fiLo-xBwP8=',
        orderNumber: '0520', cost: '10.00'
    ),
  ];

  static List<Order> getList() {
    return _list;
  }
}