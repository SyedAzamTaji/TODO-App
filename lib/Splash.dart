import 'package:flutter/material.dart';
import 'package:todoapp/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A9DFF).withOpacity(0.72),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Manage your \nDaily TO DO",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 350,
                height: 497.66,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Illustration.png"),
                        fit: BoxFit.fill))),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 56,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFC727)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 56,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFC727)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 56,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFFC727)),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Without much worry just manage things as easy as piece of cake",
                  style: TextStyle(fontSize: 24, color: Color(0xff000000)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(info: [])));
              },
              child: Container(
                width: 232,
                height: 38,
                child: Center(
                  child: Text(
                    "Create a Note",
                    style: TextStyle(fontSize: 22, color: Color(0xff000000)),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFC00E)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
