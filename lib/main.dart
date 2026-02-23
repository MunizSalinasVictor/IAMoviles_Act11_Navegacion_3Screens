import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';


void main() {
  runApp(const MiAppNavegacion());
}

class MiAppNavegacion extends StatelessWidget {
  const MiAppNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas Nombradas Flutter',
      // Definición de las rutas nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaUno(),
        '/segunda': (context) => const PaginaDos(),
        '/tercera': (context) => const PaginaTres(),
      },
    );
  }
}

// Widget reutilizable para el fondo degradado
Widget fondoDegradado(Widget contenido) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.orangeAccent, Colors.white],
      ),
    ),
    child: contenido,
  );
}

