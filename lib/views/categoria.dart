import 'package:flutter/material.dart';
import 'package:minhas_compras/models/produto.dart';
import 'package:minhas_compras/views/produtoTemplate.dart';

/* Tela de categoria, que é basicamente cada bloco que representa a categoria de produtos, 
com os respectivos produtos dentro desse bloco. 
Essa classe basicamente é chamada pela tela inicial, com a lista dos produtos e o que ela faz é 
percorrer a lista de produtos transformando eles em um ProdutoTemplate usando a função map*/
class Categoria extends StatelessWidget {
  final List<Produto> produtos;

  Categoria({@required this.produtos});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...produtos.map((produtos) => ProdutoTemplate(
              nome: produtos.nome,
              quantidade: produtos.quantidade,
              categoria: produtos.categoria,
            )),
      ],
    );
  }
}
