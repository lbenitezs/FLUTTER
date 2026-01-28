import 'package:flutter/material.dart';
import 'package:gimnasio_calculadora/core/app_colors.dart';
import 'package:gimnasio_calculadora/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
    String? selectedGender; //variable para guardar la selección

  @override
  Widget build(BuildContext context) {
  return Row(
      children: [
        //Hombre
        Expanded( //4.para que ocupe la mitad de la pantalla (al poner 2 expanded ocupan el 50%)
          child: GestureDetector(//6.Estado
            onTap: () {
              setState(() { //7.se debe nombrar cada vez que modifiquemos la UI
                selectedGender = "Hombre";
              });
            },
            child: Padding( //5.ponemos padding post expanded 
              padding: const EdgeInsets.only(
                  left: 16, top: 16, bottom: 16, right: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: selectedGender == "Hombre" //2.condición del if
                        ? AppColors.backgroundComponentSelected //?=if, dentro del widget
                        : AppColors.backgroundComponent,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding( //3.para que no quede la imagen pegada al cuadro
                  padding: const EdgeInsets.all(12), 
                  child: Column(//1. base
                    children: [
                      Image.asset("assets/images/male.png", height: 100),
                      SizedBox(height: 8),
                      Text("Hombre".toUpperCase(), style: TextStyles.bodyText)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, right: 16, left: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: selectedGender == "Mujer"
                        ? AppColors.backgroundComponentSelected
                        : AppColors.backgroundComponent,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100),
                      SizedBox(height: 8),
                      Text("Mujer".toUpperCase(), style: TextStyles.bodyText)
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}