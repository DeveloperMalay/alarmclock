import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmTile extends StatefulWidget {
  const AlarmTile({Key? key}) : super(key: key);

  @override
  State<AlarmTile> createState() => _AlarmTileState();
}

class _AlarmTileState extends State<AlarmTile> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(9),
      height: 70,
      color: Colors.transparent,
      child: ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '05:30',
              style: TextStyle(
                fontSize: 35,
                color: isSwitched
                    ? Colors.white
                    : const Color.fromARGB(255, 68, 68, 68),
              ),
            ),
            Text(
              'am',
              style: TextStyle(
                fontSize: 20,
                color: isSwitched
                    ? Colors.white
                    : const Color.fromARGB(255, 68, 68, 68),
              ),
            ),
          ],
        ),
        subtitle: const Text(
          'Mon-Fri',
          style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 68, 68, 68),
          ),
        ),
        trailing: SizedBox(
          width: 20,
          child: CupertinoSwitch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            thumbColor: Colors.white,
            trackColor: const Color.fromARGB(255, 49, 49, 49),
            activeColor: const Color.fromARGB(255, 37, 86, 222),
          ),
        ),
      ),
    );
  }
}
