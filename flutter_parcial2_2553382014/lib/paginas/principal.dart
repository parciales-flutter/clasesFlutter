import 'package:flutter/material.dart';
import 'package:flutter_parcial2_2553382014/paginas/account.dart';
import 'package:flutter_parcial2_2553382014/paginas/groceries.dart';
import 'package:flutter_parcial2_2553382014/paginas/plans.dart';
import 'package:flutter_parcial2_2553382014/paginas/recipes.dart';

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
      body: getBody(),
      bottomNavigationBar: getFooter(),
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
      Icon(Icons.receipt),
      Icon(Icons.place),
      Icon(Icons.local_grocery_store),
      Icon(Icons.account_box),
    ];
    List textoItems = [
      "Recipes",
      "Plans",
      "Groceries",
      "Account"
    ];
  }
}
