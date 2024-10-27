import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FavouriteController _favouriteController =
      Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark Favorite'),
      ),
      body: ListView.builder(
        itemCount: _favouriteController.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (_favouriteController.tempFruitList
                      .contains(_favouriteController.fruitList[index])) {
                    _favouriteController
                        .removeFavourite(_favouriteController.fruitList[index]);
                  } else {
                    _favouriteController
                        .addFavourite(_favouriteController.fruitList[index]);
                  }
                },
                title: Text(_favouriteController.fruitList[index]),
                trailing: Obx(
                      () => Icon(
                  Icons.favorite,
                  color: _favouriteController.tempFruitList
                          .contains(_favouriteController.fruitList[index])
                      ? Colors.red
                      : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
