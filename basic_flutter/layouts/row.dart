import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
     // padding: const EdgeInsets.all(8.0), //genera padding por todos lados
     padding: const EdgeInsets.only(top:86.0), //padding por lados por separado
      child: SizedBox( // si no ponemos color podemos usar SizedBox en vez de container
        //height: double.infinity,
        child: const Row(
          //mainAxisAlignment: MainAxisAlignment.center, //centra en  horizontal
          //crossAxisAlignment: CrossAxisAlignment.center, // dará error porque ocupa lo que ocupa
           children: [
                Text("hola"),
                Expanded(child: Text("hola")),
                Text("hola"),
                Text("hola"),
          ],
          ),
      ),
    );
  }
}

//para sacar padding, bombilla amarilla
