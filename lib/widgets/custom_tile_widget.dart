import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: [
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground', 
                style: TextStyle( 
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                
              ),
              SizedBox(height: 5.0,),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 15
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
    
          Row(
            children: const [
              Icon( Icons.star, color: Colors.red, ),
              SizedBox(width: 5,),
              Text('41')
            ],
          )
    
        ],
      ),
    );
  }
}