import 'package:flutter/material.dart';

import '../temas/colores.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 25, //espaciado
        ),
        Text(
          style: TextStyle(color: bgColor, fontSize: 35),
          "Datos personales",
        ),
        Image.network(
          "https://img.freepik.com/vector-premium/perfil-hombre-dibujos-animados_18591-58482.jpg?w=740",
          width: 200,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Nombre: José Rafael Belloso Chilín"),
        SizedBox(
          height: 35,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Edad: 28 años"),
        SizedBox(
          height: 35,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Carnet: 25-5338-2014"),
        SizedBox(
          height: 35,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Profesión: Estudiante"),
        SizedBox(
          height: 35,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Fecha de nacimiento: Noviembre 04, 1994"),
        SizedBox(
          height: 35,
        ),
        Text(
            style: TextStyle(color: Colors.blue, fontSize: 20),
            "Dirección: Col, las margaritas #2 pasaje 1, casa 10, Lourdes Colon, La Libertad"),
      ],
    ));
  }
}
