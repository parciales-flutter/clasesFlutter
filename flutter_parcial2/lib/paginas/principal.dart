import 'package:flutter/material.dart';
import 'package:flutter_parcial2/paginas/plans.dart';
import 'package:flutter_parcial2/paginas/recipes.dart';
import 'package:flutter_parcial2/paginas/account.dart';
import 'package:flutter_parcial2/paginas/groceries.dart';
import 'package:line_icons/line_icons.dart';

import '../temas/colores.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: getAppBar(),
        body: getBody(),
        bottomNavigationBar: getFooter(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.developer_board,
            color: primary,
          ),
          onPressed: null,
        )
      ],
      title: Container(
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: white.withOpacity(0.05)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 300,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Aplicación para compra de productos de comida",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
        Recipes(),
        Plans(),
        Groceries(),
        Account(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      LineIcons.couch,
      LineIcons.list,
      LineIcons.shoppingCart,
      LineIcons.user,
    ];
    List textoItems = ["Recipes", "Plans", "Groceries", "Account"];
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
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                            fontSize: 10,
                          )),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
