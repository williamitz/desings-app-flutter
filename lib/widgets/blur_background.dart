import 'package:flutter/material.dart';


class BlurBackground extends StatelessWidget {
  const BlurBackground({
    Key? key,
  }) : super(key: key);

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color( 0xff2E305F ),
          Color(0Xff202333)
        ],
        stops: [0.2, 0.7]
      )
    );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          decoration: boxDecoration,
        ),

        const Positioned(
          top: -80,
          left: -10,
          child: _PinkBox( )
        )

      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
   const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -3.14 / 4,
      child: Container(
        width: 320,
        height: 320,
        decoration:  const BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
          gradient: LinearGradient(
            
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1),
            ]
    
          )
        ),
      ),
    );
  }
}