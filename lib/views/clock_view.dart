import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {
  const ClockView({Key? key}) : super(key: key);

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  var dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 300,
      width: 300,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: AnalogClock(
        decoration: BoxDecoration(
          border: Border.all(width: 4.0, color: Colors.black),
          color: const Color.fromARGB(255, 39, 38, 38),
          shape: BoxShape.circle,
        ), // decoration
        width: 250.0,
        isLive: true,
        hourHandColor: Colors.white,
        minuteHandColor: Colors.white,
        showSecondHand: true,
        numberColor: Colors.white,
        showNumbers: true,
        textScaleFactor: 1.5,
        showTicks: true,
        showDigitalClock: true,
        digitalClockColor: Colors.white,
        datetime: DateTime(
          dt.year,
          dt.month,
          dt.day,
          dt.hour,
          dt.minute,
          dt.second,
        ),
      ),
    );
  }
}
