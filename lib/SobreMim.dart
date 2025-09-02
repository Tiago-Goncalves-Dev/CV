import 'package:flutter/material.dart';
import 'package:new_portefolio/main.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Título destacado
            Text(
              "Sobre Mim",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Foto de perfil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/Eu.png"),
            ),
            const SizedBox(height: 30),

            // Nome
            const Text(
              "Tiago Gonçalves",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // Subtítulo
            const Text(
              "Software Developer | Mobile & Web",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Texto sobre ti
            const Text(
              "Olá! Sou um desenvolvedor apaixonado por tecnologia, "
              "com experiência em desenvolvimento de aplicações móveis e web.\n "
              "Gosto de aprender novas tecnologias e enfrentar desafios "
              "que me ajudam a crescer profissionalmente.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 30),

            // Secção de interesses
            Align(
              child: Text(
                "Interesses:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "• Desenvolvimento Mobile (Flutter, Android, iOS)\n"
              "• Desenvolvimento Web (React, Node.js)\n"
              "• Inteligência Artificial e Machine Learning\n"
              "• UI/UX Design e boas práticas de código",
            ),

            const SizedBox(height: 30),

            // Botão para voltar
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey[800],
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Colors.grey, width: 1.5),
                ),
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text("Voltar"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
