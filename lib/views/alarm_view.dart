import 'package:alarmapp/widget/alarm_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlarmView extends StatefulWidget {
  const AlarmView({Key? key}) : super(key: key);

  @override
  State<AlarmView> createState() => _AlarmViewState();
}

class _AlarmViewState extends State<AlarmView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarm'),
        elevation: 4,
        shadowColor: const Color.fromARGB(255, 99, 98, 98),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: const [
            AlarmTile(),
            AlarmTile(),
            AlarmTile(),
            AlarmTile(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 49, 49, 49),
          onPressed: () {
            
          },
          child: const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                size: 30.0,
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
