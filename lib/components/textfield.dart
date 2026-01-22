import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  const TextfieldExample({super.key});

    @override
  Widget build(BuildContext context) {
    return ListView( //convierte una columna en una lista y detecta el scroll
      children: [
        SizedBox(
          height: 60,//para dejar aire arriba
        ),
        TextField(),
        SizedBox(height: 32),
        TextField(),
        SizedBox(height: 32),
        TextField(decoration: InputDecoration(hintText: "Introduce tu email")),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "Introduce tu email",
                  border: OutlineInputBorder())),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "Introduce tu email",
                  prefixIcon: Icon(Icons.search), //trae iconos del propio sistema
                  border: OutlineInputBorder())),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true, //oculta el texto
              decoration: InputDecoration(
                  hintText: "Introduce tu contraseña",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder())),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 1, //limita líneas
            maxLength: 10, //limita carácteres 
              decoration: InputDecoration(
                  hintText: "Introduce tu comentario",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder())),
        ),
        SizedBox(height: 32)
      ],
    );
  }
}