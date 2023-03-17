import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String? ScreenParameter;
  const MainScreen({super.key, required this.ScreenParameter});
  @override
  State<MainScreen> createState() => _MainScreenState(ScreenParameter);
}

class _MainScreenState extends State<MainScreen> {
  final String? ScreenParameter;
  _MainScreenState(this.ScreenParameter);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Notification Screen")),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(ScreenParameter.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Notification",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
