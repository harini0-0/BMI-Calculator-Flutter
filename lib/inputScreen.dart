import 'package:flutter/material.dart';
import 'components/contentCard.dart';

enum genderCluster { MALE, FEMALE }

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
              Expanded(
                child: GestureDetector(
                    onTap: () => {
                          setState(() {
                            gend = genderCluster.MALE;
                          })
                        },
                    child: CardContent(
                      gender: 'MALE',
                      iconname: Icons.male,
                      cardColor: gend == genderCluster.MALE
                          ? cardColor
                          : Color(0xff14183B),
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () => {
                          setState(() {
                            gend = genderCluster.FEMALE;
                          })
                        },
                    child: CardContent(
                      gender: 'FEMALE',
                      iconname: Icons.female,
                      cardColor: gend == genderCluster.FEMALE
                          ? cardColor
                          : Color(0xff14183B),
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
