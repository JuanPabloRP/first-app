// Importamos la librería de diseño de Google (llena de widgets listos para usar)
import 'package:flutter/material.dart';

// El punto de entrada de toda la app
void main() {
  // Le decimos a Flutter que ejecute nuestra aplicación

  runApp(const HelloWorldApp());
}

// Creamos nuestro primer widget (una "Estatua", no cambiará)
class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  // Todo widget debe tener un método `build` que describe cómo se ve
  @override
  Widget build(BuildContext context) {
    // MaterialApp es el widget raíz que nos da funcionalidades base de una app
    return MaterialApp(
      // `home` define la pantalla principal
      home: Scaffold(
        backgroundColor: Color(0xFF1A1A40),
        // El cuerpo de la pantalla
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/logo_rapicredit_blanco.png',
                  height: 50,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Bienvenido a",
                      style: TextStyle(color: Color(0xFF00F2C3), fontSize: 52),
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "RapiCredit",
                      style: TextStyle(
                        color: Color(0xFF00F2C3),
                        fontSize: 52,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Disfruta y gestiona tus créditos fácilmente en una sola app.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00F2C3),
                        foregroundColor: Color(0xFF1A1A40),
                        fixedSize: Size(500, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      child: const Text('¡Comenzar!'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
