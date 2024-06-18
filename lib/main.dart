import 'package:flutter/material.dart';
import 'listasliver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 4, 64, 27),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            foregroundColor: Colors.lightGreen,
            backgroundColor: Color.fromARGB(255, 14, 70, 10),
            leading: Icon(Icons.menu),
            title: Text('Barra que some'),
            expandedHeight: 300,
            collapsedHeight: 60,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 400, // Ajuste a altura conforme necessário
              child: ListaSliver(),
            ),
          ),
        ],
      ),
    );
  }
}
