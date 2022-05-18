import 'package:flutter/material.dart';

class BlurTitle extends StatelessWidget {
  const BlurTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Classify transaction',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox( height: 10, ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
