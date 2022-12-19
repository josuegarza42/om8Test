import 'package:flutter/material.dart';
import '../../../config_screen.dart';
import '../../Widgets/bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget{
  static String routeNavigator = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.blueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.9],
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(
          indexNum: 2,
        ),
        body: const Body(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.9],
              ),
            ),
          ),
        ),
      ),
    );
  }
}