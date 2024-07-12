
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  final double value;
  const PercentIndicator({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 20,
      lineWidth: 2,
      percent: value,
      center: Text(
        '${(value * 100).toStringAsFixed(0)}%',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
      progressColor: Color.fromARGB(255, 88, 202, 132),
    );
  }
}
