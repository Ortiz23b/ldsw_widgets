import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetsDemo());
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LDSW 3.4',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Utilización de Widgets'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto dentro de un Container
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal, width: 2),
              ),
              child: const Text(
                'Este texto está dentro de un Container',
                style: TextStyle(fontSize: 18, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),

            // Row con iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.coffee, color: Colors.brown, size: 40),
                Icon(Icons.access_time, color: Colors.blueGrey, size: 40),
                Icon(Icons.favorite, color: Colors.redAccent, size: 40),
              ],
            ),

            const SizedBox(height: 30),

            // Stack con contenedores superpuestos
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 130, height: 130, color: Colors.teal.shade100),
                Container(width: 90, height: 90, color: Colors.teal.shade300),
                const Text(
                  'Stack',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
