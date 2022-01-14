import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class ScoreboardTiles extends GetView<HomeController> {
  ScoreboardTiles({required this.title1, required this.title2});
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    var color = title2 == 'X' ? Colors.green : Colors.blue;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LayoutBuilder(builder: (_, constraints) {
            return AutoSizeText(
              title1.toUpperCase(),
              minFontSize: 15,
              maxLines: 1,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.bold, fontSize: 20),
            );
          }),
          SizedBox(width: 10),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: Colors.blueGrey.shade900, width: 3)),
            color: Colors.blueGrey.shade600,
            elevation: 20,
            child: Container(
              height: 40,
              width: 40,
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              child: Center(
                child: Text(
                  title2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: color, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Obx(
            () => AutoSizeText(
              'Winner: ${controller.scoreboard[title1]}',
              minFontSize: 15,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            // Text(
            //       'Vitórias: ${controller.scoreboard[title1]}',
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22),
            //     )
          )
        ],
      ),
    );
  }
}
