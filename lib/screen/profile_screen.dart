import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Image.asset('assets/images/pixel256.bmp'),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Thoriq Ibadurrohman",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
            ),
            Container(
              margin: EdgeInsets.all(4.0),
              child: Text(
                "thoriq312@gmail.com",
                style: TextStyle(fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
