import 'package:flutter/material.dart';
import 'package:analog_clock_flutter/screens/components/time_in_hours_and_minute.dart';
import 'package:analog_clock_flutter/screens/components/clock.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Clock(),
        ],
      ),
    );
  }
}
