import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Icon(
              Icons.grid_4x4_outlined,
              color: Colors.green,
              size: 30,
            ),
          ),
          Flexible(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: AutoSizeText(
                    'Tic',
                    minFontSize: 15,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'georgia',
                      fontWeight: FontWeight.w900,
                      color: Colors.green,
                    ),
                  ),
                ),
                Flexible(
                  child: AutoSizeText(
                    'Tae',
                    minFontSize: 15,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'georgia',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  child: AutoSizeText(
                    'Toe',
                    minFontSize: 15,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'georgia',
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Icon(
              Icons.grid_4x4_outlined,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
