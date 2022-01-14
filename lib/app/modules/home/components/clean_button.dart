import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class CleanButton extends GetView<HomeController> {
  const CleanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => controller.cleanScoreboard(),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(20),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(width: 5, color: Colors.blueGrey.shade800),
              borderRadius: BorderRadius.circular(10))),
        ),
        child: Text(
          'Reset Score',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'georgia',
              fontWeight: FontWeight.bold),
        ));
  }
}
