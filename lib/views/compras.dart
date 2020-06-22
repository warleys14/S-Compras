import 'dart:math';

import 'package:flutter/material.dart';
import 'package:minhas_compras/models/compra.dart';
import 'package:minhas_compras/models/produto.dart';
import 'package:minhas_compras/views/addCompra.dart';
import 'package:minhas_compras/views/compraTemplate.dart';

class Compras extends StatefulWidget {
  @override
  _ComprasState createState() => _ComprasState();
}

class _ComprasState extends State<Compras> {
  final List<Compra> listadecomprasfeitas = [
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Julho",
        data: DateTime.now(),
        listadeprodutos: [
          Produto(nome: "Fuba", quantidade: "2", categoria: "Grosso"),
          Produto(nome: "Sal", quantidade: "Padrão", categoria: "Grosso"),
          Produto(nome: "Desinfetante", quantidade: "3", categoria: "LeH"),
          Produto(nome: "Desodorante", quantidade: "1", categoria: "LeH"),
          Produto(nome: "Sabonete", quantidade: "Padrão", categoria: "LeH"),
          Produto(nome: "Fio Dental", quantidade: "2", categoria: "LeH"),
          Produto(
              nome: "Lâmina de Barbear",
              quantidade: "Padrão",
              categoria: "LeH"),
          Produto(nome: "Peixe", quantidade: "3", categoria: "Frios"),
          Produto(nome: "Salsicha", quantidade: "1", categoria: "Frios"),
        ]),
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Agosto",
        data: DateTime.now(),
        listadeprodutos: [
          Produto(nome: "Açúcar", quantidade: "2", categoria: "Grosso"),
          Produto(nome: "Sal", quantidade: "Padrão", categoria: "Grosso"),
          Produto(nome: "Sabonete", quantidade: "Padrão", categoria: "LeH"),
          Produto(nome: "Fio Dental", quantidade: "2", categoria: "LeH"),
          Produto(
              nome: "Lâmina de Barbear",
              quantidade: "Padrão",
              categoria: "LeH"),
          Produto(nome: "Peixe", quantidade: "3", categoria: "Frios"),
          Produto(nome: "Salsicha", quantidade: "1", categoria: "Frios"),
        ]),
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Agosto",
        data: DateTime.now(),
        listadeprodutos: []),
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Agosto",
        data: DateTime.now(),
        listadeprodutos: []),
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Agosto",
        data: DateTime.now(),
        listadeprodutos: []),
    Compra(
        id: Random().nextDouble().toString(),
        nome: "Compra de Agosto",
        data: DateTime.now(),
        listadeprodutos: []),
  ];

  _addCompra(String novonome, DateTime datadacompra, List<Produto> produtos) {
    final novacompra = Compra(
        id: Random().nextDouble().toString(),
        nome: novonome,
        data: datadacompra,
        listadeprodutos: produtos);
    setState(() {
      listadecomprasfeitas.add(novacompra);
    });

    Navigator.of(context).pop();
  }

  _delCompra(String id) {
    setState(() {
      listadecomprasfeitas.removeWhere((compra) => compra.id == id);
    });
  }

  _openAddShopFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return AddCompra(submeter: _addCompra);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Compras Feitas"),
        ),
        body: ListView(
          children: <Widget>[
            ...listadecomprasfeitas.map((compra) => CompraTemplate(
                  compra: compra,
                  delCompra: _delCompra,
                )),
            SizedBox(
              height: 70,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add_box),
            onPressed: () {
              _openAddShopFormModal(context);
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
