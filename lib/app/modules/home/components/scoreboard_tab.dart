import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';
import 'clean_button.dart';
import 'scoreboard_tiles.dart';

class ScoreboardTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: ScoreboardTiles(title1: 'Player 1', title2: 'X')),
            Flexible(child: ScoreboardTiles(title1: 'Player 2', title2: 'O'))
          ]),
      CleanButton()
    ]);
  }
}
