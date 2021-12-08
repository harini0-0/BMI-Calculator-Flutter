import 'package:flutter/material.dart';
import '/constants.dart';

class CardContent extends StatelessWidget {
  CardContent(
      {required this.gender,
      required this.iconname,
      required this.cardColor,
      required this.clicker});

  String gender;
  Function clicker;
  IconData iconname;
  Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {clicker()},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: cardColor,
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          height: 200,
          width: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconname,
                color: Colors.white,
                size: 80,
              ),
              Text(
                gender,
                style: txt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
