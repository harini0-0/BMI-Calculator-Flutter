import 'package:flutter/material.dart';
import 'components/contentCard.dart';
import 'constants.dart';

class InputScreen extends StatefulWidget {
  //InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  genderCluster? gend;
  Color cardColor = Color(0xff272A4D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0C21),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
        backgroundColor: Color(0xff090E21),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(children: [
              CardContent(
                clicker: () {
                  setState(() {
                    gend = genderCluster.MALE;
                  });
                },
                gender: 'MALE',
                iconname: Icons.male,
                cardColor:
                    gend == genderCluster.MALE ? cardColor : Color(0xff14183B),
              ),
              SizedBox(
                width: 10,
              ),
              CardContent(
                clicker: () {
                  setState(() {
                    gend = genderCluster.FEMALE;
                  });
                },
                gender: 'FEMALE',
                iconname: Icons.female,
                cardColor: gend == genderCluster.FEMALE
                    ? cardColor
                    : Color(0xff14183B),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
