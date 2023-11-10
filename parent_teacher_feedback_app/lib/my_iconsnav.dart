import 'package:flutter/material.dart';

class MyIconButtons extends StatelessWidget {
  const MyIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
         enableFeedback: false, 
              onPressed: () {}, 
              icon: const Icon( 
                Icons.home_outlined, 
                color: Colors.white, 
                size: 35,
      )
      )

    );
  }
}
