import 'package:flutter/material.dart';
import 'package:sampleapp/constants.dart';
import 'package:sampleapp/inputScreen.dart';

class SliderComponent extends StatefulWidget {
  SliderComponent({Key? key}) : super(key: key);

  @override
  _SliderComponentState createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  // int height = 180;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: cardColor,
        ),
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        height: 200,
        // width: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.baseline,

          children: [
            Text(
              'HEIGHT',
              style: TextStyle(fontSize: 18.0, color: Color(0xFF8A8B95)),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "$height",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                Text(
                  " cm",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbColor: Color(0xFFFF0067),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                activeTrackColor: Colors.white,
                overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
                overlayColor: Color(0x29FF0067),
                inactiveTrackColor: Color(0xFF8D8E98),
              ),
              child: Slider(
                value: height.toDouble(),
                onChanged: (value) {
                  setState(() {
                    height = value.toInt();
                  });
                },
                min: 100,
                max: 250,
              ),
            )
          ],
        ),
      ),
    );
  }
}
