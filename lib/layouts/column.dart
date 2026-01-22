import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width:double.infinity,
      
      child:Column(  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("hola"),
            Text("hola"),
            Text("hola"),
            Text("hola"),
      ],
    ) ,
    );
    

  }
}