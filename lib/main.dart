import 'package:flutter/material.dart';
import 'package:lab02_dac/pages/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Con el controlador metemos la información que escribimos en una variable.
    // _valorInput es el contenedor de mi información ( del input )
    TextEditingController _valorInput = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla principal'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 40, top: 30),
            child: TextField(
              // Le mando un objeto que va a contener el valor y se lo asigna automáticamente.
              controller: _valorInput,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "Por favor ingrese el texto"),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Cambia el color de fondo del botón
              onPrimary: Colors.white, // Cambia el color del texto del botón
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Screen2(_valorInput.text)));
            },
            child: Text('Enviar información'),
          )
        ],
      ),
    );
  }
}
