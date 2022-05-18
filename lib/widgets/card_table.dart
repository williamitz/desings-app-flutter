import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _ItemTable(
            title: 'General', 
            icon: Icons.bar_chart_outlined, 
            color: Colors.green,
          ),

          _ItemTable(
            title: 'Calendar', 
            icon: Icons.calendar_today_outlined, 
            color: Colors.redAccent,
          ),
        ]),

        TableRow(children: [
          _ItemTable(
            title: 'People', 
            icon: Icons.people_alt_outlined, 
            color: Colors.deepPurpleAccent,
          ),

          _ItemTable(
            title: 'Community', 
            icon: Icons.face_outlined, 
            color: Colors.pinkAccent,
          ),
        ]),

        TableRow(children: [
          _ItemTable(
            title: 'Chats', 
            icon: Icons.chat_bubble_outline, 
            color: Colors.teal,
          ),

          _ItemTable(
            title: 'Like', 
            icon: Icons.library_add_check_rounded, 
            color: Colors.indigoAccent,
          ),
        ]),
        
      ],
    );
  }
}

class _ItemTable extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: const Color.fromRGBO(62, 66, 107, 0.7),
  );

  final String title;
  final IconData icon;
  final Color color;

  _ItemTable({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      // width: 40,
      height: 180,
      decoration: boxDecoration,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
