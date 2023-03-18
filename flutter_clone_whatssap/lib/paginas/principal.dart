import 'package:flutter/material.dart';
import 'package:flutter_clone_whatssap/paginas/chat.dart';
import 'package:flutter_clone_whatssap/paginas/estado.dart';
import 'package:flutter_clone_whatssap/paginas/llamadas.dart';
import 'package:flutter_clone_whatssap/temas/colores.dart';

import 'package:line_icons/line_icons.dart';

import '../temas/colores.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
        Estado(),
        Llamadas(),
        ChatPagina(),
        ChatPagina(),
        ChatPagina(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      LineIcons.circle,
      LineIcons.phoneSquare,
      LineIcons.camera,
      LineIcons.comment,
      LineIcons.gem,
    ];
    List textoItems = [
      "Estado",
      "Llamadas",
      "Camara",
      "Chat",
      "Configuraciones"
    ];
    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      paginaIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        iconosItems[index],
                        color: paginaIndex == index
                            ? primary
                            : white.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? primary
                                  : white.withOpacity(0.5))),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
