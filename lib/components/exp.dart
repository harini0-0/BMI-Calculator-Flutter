import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleapp/components/roundIconButton.dart';

import '../constants.dart';

class Exp extends StatelessWidget {
  Exp(
      {required this.onpress,
      required this.val,
      required this.onpress2,
      required this.txt});
  final Function onpress;
  final Function onpress2;
  final int val;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 170.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            txt,
            style: TextStyle(fontSize: 18.0, color: Color(0xFF8A8B95)),
          ),
          Text(
            "$val",
            style: kslidertextstyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  onpress();
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  onpress2();
                },
              )
            ],
          ),
        ],
      ),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
    );
  }
}
