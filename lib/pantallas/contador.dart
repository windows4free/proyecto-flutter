import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override
  int clickcontador = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador.'), //Texto a mostrar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de Clicks'), //Texto a mostrar
            Text(
              '$clickcontador',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ), //Texto a mostrar
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              clickcontador++;
              setState(() {});
            },
            child: Icon(Icons.plus_one),
          ),
          SizedBox(
            height: 20,
          ), //el sizedbox se utilizo para que hay aun espacio entre los 2 botones
          FloatingActionButton(
            onPressed: () {
              if (clickcontador == 0) return;
              clickcontador--;
              setState(() {});
            },
            child: Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
