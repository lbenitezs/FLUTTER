import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado!");
          },
          child: Text("Soy un botón :)"),
          onLongPress: () {
            print("Pulsadooooooooo!");
          },
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.red)), //color de estado
        ),
        OutlinedButton(onPressed: null, child: Text("Outlined")),
        TextButton(onPressed: null, child: Text("TextButton")),
        FloatingActionButton(onPressed: (){}, child: Icon(Icons.add)),//añade imagen de +
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        Spacer()
      ],
    );
  }
}