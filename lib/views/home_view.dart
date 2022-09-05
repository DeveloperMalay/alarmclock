import 'package:alarmapp/views/alarm_view.dart';
import 'package:alarmapp/views/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock'),
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
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 48, 48, 48),
              Colors.black,
            ],
            center: Alignment.center,
            radius: 0.6,
          ),
        ),
        child: const Center(child: ClockView()),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 49, 49, 49),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const AlarmView();
            }));
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
