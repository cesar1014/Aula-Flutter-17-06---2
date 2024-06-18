import 'package:flutter/material.dart';

class ListaSliver extends StatelessWidget {
  final List<String> dias = [
    'domingo',
    'segunda',
    'terça',
    'quarta',
    'quinta',
    'sexta',
    'sábado'
  ];

  ListaSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:
          SliverChildBuilderDelegate(childCount: dias.length, (context, index) {
        return Container(
          height: 100,
          child: ListTile(
            title: Text(dias[index]),
          ),
        );
      }),
    );
  }
}
