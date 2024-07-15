import 'package:flutter/material.dart';

class MyClubContainers extends StatelessWidget {
  final String myTexts;
  final String imagePath;

  const MyClubContainers({
    super.key,
    required this.myTexts,
    required this.imagePath,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,),
      child: Center(
        
        child: Container( 
                 padding:const EdgeInsets.all(20),
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath,),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                      color: Colors.grey.shade500,
                      offset:const Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ), 
                    ],
      
                  ),
                  child: Text(myTexts,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
                  ),
            ),
      ),
        

    );
  }
}
