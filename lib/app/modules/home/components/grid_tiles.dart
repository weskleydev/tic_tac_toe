import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class GridTiles extends GetView<HomeController> {
  const GridTiles({required this.board, required this.tap, Key? key})
      : super(key: key);
  final String board;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: controller.gameOver ? null : tap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.brown.shade50,
          elevation: 20,
          child: Center(
            child: Text(
              board,
              style: TextStyle(
                  fontSize: 70,
                  color: board == 'X' ? Colors.green : Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
  //controller.turn_index == 0 ? Colors.green : Colors.yellow,
}
