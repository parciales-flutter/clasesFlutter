import 'package:flutter/material.dart';
import 'package:flutter_parcial2/temas/colores.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 25, //espaciado
        ),
        Text(
          style: TextStyle(color: bgColor, fontSize: 35),
          "Datos de TDC o TDD",
        ),
        Image.network(
          "https://cdn-icons-png.flaticon.com/512/93/93193.png?w=740&t=st=1679192131~exp=1679192731~hmac=cd2ee8db54f4bb0e3f7e0c88f92dcf921f5e1f0795b5f46d7ef016edda480188",
          width: 200,
        ),
        SizedBox(
          height: 15,
        ),
        _nombre(),
        SizedBox(
          height: 15,
        ),
        _numTdc(),
        SizedBox(
          height: 45,
        ),
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: _Fecha()),
            SizedBox(
              height: 15,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5, child: _CCV()),
          ],
        )
      ],
    ));
  }

  Container _nombre() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: bgColor)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: bgColor, fontSize: 15),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: bgColor),
            icon: Icon(Icons.account_box),
            hintText: 'Nombre según tarjeta',
          ),
        ));
  }

  Container _numTdc() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: bgColor)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: bgColor, fontSize: 15),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: bgColor),
            icon: Icon(Icons.numbers),
            hintText: '0000 0000 0000 0000',
          ),
          obscureText: false,
        ));
  }

  Container _Fecha() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: bgColor)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: bgColor, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: bgColor),
              icon: Icon(Icons.date_range_sharp),
              hintText: 'MM/AAAA',
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Container _CCV() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: bgColor)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: bgColor, fontSize: 15),
          decoration: InputDecoration(
              hintStyle: TextStyle(color: bgColor),
              icon: Icon(
                Icons.password,
              ),
              hintText: '000',
              border: InputBorder.none),
          obscureText: true,
        ));
  }
}
