import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  final myTextStyle = const TextStyle(
      fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(80, 194, 221, 1),
      body: Container(

        height: double.infinity,
        alignment: Alignment.topCenter,

        decoration:   const BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color.fromRGBO(122, 236, 203,1), Color.fromRGBO(80, 194, 221, 1) ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5]
          ),
        ),

        child: PageView(
          physics:  const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [Page1(myTextStyle: myTextStyle),  const Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
    required this.myTextStyle,
  }) : super(key: key);

  final TextStyle myTextStyle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [const Background(), CustomContent(myTextStyle: myTextStyle)],
    );
  }
}

class CustomContent extends StatelessWidget {
  const CustomContent({
    Key? key,
    required this.myTextStyle,
  }) : super(key: key);

  final TextStyle myTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 90,
        ),
        Text(
          '11°',
          style: myTextStyle,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Miércoles',
          style: myTextStyle,
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
          size: 100,
        )
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage('assets/scroll-1.png'));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(80, 194, 221, 1),
      child: Center(
        child: TextButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue, shape: const StadiumBorder()),
          onPressed: () {},
        ),
      ),
    );
  }
}
