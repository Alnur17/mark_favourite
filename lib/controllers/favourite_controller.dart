import 'package:get/get.dart';

class FavouriteController extends GetxController {
  List<String> fruitList = ['Mango', 'Apple', 'Banana', 'Orange', 'Guava'].obs;
  List tempFruitList = [].obs;

  addFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFavourite(String value) {
    tempFruitList.remove(value);
  }

}
