import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/resultScreen.dart';
import 'components/contentCard.dart';
import 'components/exp.dart';
import 'components/slider.dart';
import 'constants.dart';
import 'components/bmi_brain.dart';

class InputScreen extends StatefulWidget {
  //InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

int height = 180;

class _InputScreenState extends State<InputScreen> {
  genderCluster? gend;
  int weightvalue = 62;
  int agevalue = 10;
  String bmiDescrip = '';
  String bmiCalc = '';
  String bmiResult = '';
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
            Expanded(
              child: Row(children: [
                CardContent(
                  clicker: () {
                    setState(() {
                      gend = genderCluster.MALE;
                    });
                  },
                  gender: 'MALE',
                  iconname: Icons.male,
                  cardColor: gend == genderCluster.MALE
                      ? cardColor
                      : Color(0xff14183B),
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
            ),
            SliderComponent(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Exp(
                      onpress: () {
                        setState(() {
                          weightvalue++;
                        });
                      },
                      onpress2: () {
                        setState(() {
                          weightvalue--;
                        });
                      },
                      val: weightvalue,
                      txt: 'WEIGHT',
                    ),
                  ),
                  Expanded(
                    child: Exp(
                      onpress: () {
                        setState(() {
                          agevalue++;
                        });
                      },
                      onpress2: () {
                        setState(() {
                          agevalue--;
                        });
                      },
                      val: agevalue,
                      txt: "AGE",
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Bmi_Brain bmivar =
                    Bmi_Brain(height: height, weight: weightvalue);
                bmiCalc = bmivar.calculate_bmi().toStringAsFixed(1);
                bmiDescrip = bmivar.normalornot();
                bmiResult = bmivar.result();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultScreen(
                      bmiDescrip: bmiDescrip,
                      bmiCalc: bmiCalc,
                      bmiResult: bmiResult);
                }));
              },
              child: Container(
                height: 70,
                width: 370,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFFF0067),
                ),
                child: Center(
                  child: Text(
                    'Calculate BMI',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
