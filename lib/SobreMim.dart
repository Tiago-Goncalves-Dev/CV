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
              "About Me",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android, color: Colors.indigo),
                    SizedBox(width: 8),
                    Text(
                      "Desenvolvimento Mobile (Flutter, Kotlin, Android, iOS)",
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.web, color: Colors.indigo),
                    SizedBox(width: 8),
                    Text("Desenvolvimento Web (React, Node.js, Bootstrap)"),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.memory, color: Colors.indigo),
                    SizedBox(width: 8),
                    Text("Bases de dados (SQL, SQLite, Firebase)"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Botão para voltar
            OutlinedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
              label: Text("Voltar"),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
