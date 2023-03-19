import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../json/productoscomida.dart';
import '../temas/colores.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatBoxMe,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Productos de comida ordenados por Categoría",
                style: TextStyle(
                    fontSize: 19, color: white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                            child: Divider(color: white.withOpacity(0.3)),
                          ),
                          Text("_____________________________________________"),
                          Text(
                            "Categoría: Desayuno",
                            style: TextStyle(
                                fontSize: 19,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("_____________________________________________"),
                          getCatDesayuno(),
                          SizedBox(
                            height: 25,
                          ),
                          Text("_____________________________________________"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Categoría: Almuerzo",
                            style: TextStyle(
                                fontSize: 19,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("_____________________________________________"),
                          getCatAlmuerzo(),
                          Text("_____________________________________________"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Categoría: Cena",
                            style: TextStyle(
                                fontSize: 19,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("_____________________________________________"),
                          getCatCena(),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getCatDesayuno() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(comidaLstDesayuno.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      comidaLstDesayuno[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comidaLstDesayuno[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.breakfast_dining,
                                    color: white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Producto para desayuno",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              comidaLstDesayuno[index]['prod'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.5)),
                            ),
                          ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getCatAlmuerzo() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(comidaLstAlmuerzo.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      comidaLstAlmuerzo[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comidaLstAlmuerzo[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lunch_dining,
                                    color: white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Producto para almuerzo",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              comidaLstAlmuerzo[index]['prod'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.5)),
                            ),
                          ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getCatCena() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(comidaLstCena.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                  image:
                                      NetworkImage(comidaLstCena[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comidaLstCena[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lunch_dining,
                                    color: white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Producto para cenar",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: white.withOpacity(0.5),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              comidaLstCena[index]['prod'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.5)),
                            ),
                          ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
