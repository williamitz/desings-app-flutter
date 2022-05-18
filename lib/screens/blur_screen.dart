import 'package:flutter/material.dart';

import 'package:desing_app/widgets/widgets.dart';

class BlurScreen extends StatelessWidget {
   
  const BlurScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      body: Stack(
        children: const [

          BlurBackground(),

          _BlurBody()

        ],
      ),

      bottomNavigationBar: const BlurTaps(),

    );


  }
}

class _BlurBody extends StatelessWidget {
  const _BlurBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          BlurTitle(),

          //Card Table

          CardTable()

        ],
      ),
    );
  }
}

