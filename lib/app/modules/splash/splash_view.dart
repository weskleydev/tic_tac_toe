import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 430,
          maxHeight: 800,
        ),
        child: Scaffold(
            backgroundColor: Colors.black,
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  rows(),
                  columns(),
                ],
              ),
              SizedBox(height: 100),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tic',
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.green,
                          fontFamily: 'georgia',
                          fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: ' Tae ',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: 'georgia',
                          fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: 'Toe',
                      style: TextStyle(
                          fontSize: 45,
                          color: Colors.blue,
                          fontFamily: 'georgia',
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ])),
      ),
    );
  }

  columns() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          height: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.blue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
        SizedBox(height: 80),
        SizedBox(
          width: 300,
          height: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.green,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        SizedBox(height: 80),
        SizedBox(
          width: 300,
          height: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.blue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ],
    );
  }

  rows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.green,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        SizedBox(width: 80),
        SizedBox(
          height: 300,
          width: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.blue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
        SizedBox(width: 80),
        SizedBox(
          height: 300,
          width: 5,
          child: LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: Colors.green,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      ],
    );
  }
}
