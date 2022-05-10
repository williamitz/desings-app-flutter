import 'package:flutter/material.dart';
import 'package:desing_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
      
            Container(
              child: const FadeInImage(
                width: double.infinity,
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHCeytlX9sAmdzJFxZNQZrEX44JUnGDvWuAg&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),

            const CustomTile(),

            const SizedBox(
              height: 15.0,
            ),

            const ButtonRow(),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: const Text(
                'Id Lorem voluptate ex aliquip anim esse ut laborum minim nostrud eu irure laboris. Consequat ex tempor enim veniam adipisicing excepteur laboris velit occaecat adipisicing. Esse aute duis qui proident laborum exercitation fugiat. Anim cupidatat commodo labore excepteur sunt exercitation occaecat elit qui ex velit. Ad laborum in aute officia voluptate qui ut sint. Eu aliqua aute incididunt aute velit ad labore enim ea aliquip irure reprehenderit tempor ex. Consectetur ea fugiat aute excepteur do occaecat proident nulla incididunt in.',
                style: TextStyle(
                  
                ),
              )
            )
      
  
          ],
        ),
      ),
    );
  }
}


