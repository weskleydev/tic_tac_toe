import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/app/modules/home/components/grid_tiles.dart';
import 'package:tic_tac_toe/app/modules/home/home_controller.dart';

class GridTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: LinearProgressIndicator(
                minHeight: Get.width - 20,
                backgroundColor: Colors.blue,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.all(2),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,

                // childAspectRatio: 4.5,
              ),
              itemCount:
                  controller.board.length, //controller.filteredServices.length,
              itemBuilder: (_, index) {
                return GridTiles(
                    board: controller.board[index],
                    tap: () => controller.make_play(index));
              },
            ),
          ],
        ));
  }
}
