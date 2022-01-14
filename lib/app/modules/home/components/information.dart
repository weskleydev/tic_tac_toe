import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class Information extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Obx(() => Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Play ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: 'player ${controller.turn_index == 0 ? 1 : 2}!',
                    style: TextStyle(
                        color: controller.turn_index == 0
                            ? Colors.green
                            : Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )),
    );
  }
}
