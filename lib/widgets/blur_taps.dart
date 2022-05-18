import 'package:flutter/material.dart';


class BlurTaps extends StatelessWidget {
  const BlurTaps({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(32, 35, 51, 0.9),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: true,
      showUnselectedLabels: false,

      currentIndex: 1,

      items: const [
        BottomNavigationBarItem(
          label: 'Calendario',
          icon: Icon( Icons.ac_unit_outlined, size: 30, )
        ),

        BottomNavigationBarItem(
          label: 'Gráfica',
          icon: Icon( Icons.pie_chart_outline, size: 30 )
        ),

        BottomNavigationBarItem(
          label: 'Usuarios',
          icon: Icon( Icons.people_alt_outlined, size: 30 )
        ),
      ]
    );
  }
}
