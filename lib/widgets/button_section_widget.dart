import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _customButton(icon: Icons.phone, text: 'CALL', ),
          _customButton(icon: Icons.send, text: 'ROUTE', ),
          _customButton(icon: Icons.share, text: 'SHARE', ),
        ],
      ),
    );
  }
}

class _customButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const _customButton({
    Key? key,
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(
          icon, 
          color: Colors.blue,
          size: 31.0,
        ), 
        const SizedBox(height: 10.0,),
        Text(
          text,
          style: const TextStyle(
            color: Colors.blue
          ), 
        )
      ],
    );
  }
}
