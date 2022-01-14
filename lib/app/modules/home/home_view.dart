import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/information.dart';
import 'components/scoreboard_tab.dart';
import 'components/grid_tab.dart';
import 'components/header_title.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 430,
            maxHeight: 800,
          ),
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 1, child: HeaderTitle()),
                  Expanded(flex: 7, child: GridTab()),
                  Expanded(flex: 1, child: Information()),
                  Expanded(flex: 4, child: ScoreboardTab())
                ],
              ),
            ),
          ),
        ));
  }
}
