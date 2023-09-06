import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String texto;
  const Screen2(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pantalla'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}
