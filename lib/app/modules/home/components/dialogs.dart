import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dialogs {
  static noWinner({
    required void Function() onConfirm,
    required void Function() onCancel,
  }) {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: 'Game Over',
        titleStyle: TextStyle(fontWeight: FontWeight.w900),
        onConfirm: onConfirm,
        textConfirm: 'New Game',
        buttonColor: Colors.blueGrey,
        confirmTextColor: Colors.white,
        cancelTextColor: Colors.red,
        middleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        onCancel: onCancel,
        textCancel: 'Exit',
        middleText: "No winner in the round");
  }

  static game_is_over(
      {required void Function() onConfirm,
      required void Function() onCancel,
      required String winnerPlayer}) {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: 'Game Over',
        titleStyle: TextStyle(fontWeight: FontWeight.w900),
        onConfirm: onConfirm,
        textConfirm: 'New Game',
        buttonColor: Colors.blueGrey,
        confirmTextColor: Colors.white,
        cancelTextColor: Colors.red,
        middleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        onCancel: onCancel,
        textCancel: 'Exit',
        middleText: "$winnerPlayer is the Winner of the round !");
  }
}
