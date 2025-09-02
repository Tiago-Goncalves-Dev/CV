import 'package:flutter/material.dart';
import 'package:new_portefolio/SobreMim.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portefólio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900), // velocidade diminuída
            curve: Curves.easeInOut,
            top: _hovering ? 120 : MediaQuery.of(context).size.height / 2 - 150,
            left: 0,
            right: 0,
            child: Center(
              child: MouseRegion(
                onEnter: (_) {
                  if (!_hovering) setState(() => _hovering = true);
                },
                child: GestureDetector(
                  onTap: () {
                    if (!_hovering) setState(() => _hovering = true);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/Eu.png"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Tiago Gonçalves",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Software Developer | Mobile & Web",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Where my journey begins...",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.50,
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Center(
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: _hovering ? 1.0 : 0.0,
                curve: Curves.easeInOut,
                child: IgnorePointer(
                  ignoring: !_hovering,
                  child: Wrap(
                    spacing: 24,
                    runSpacing: 16,
                    alignment: WrapAlignment.center,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.person),
                        label: const Text("Sobre Mim"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SobreMim()),
                          );
                        },
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.person),
                        label: const Text("Projetos"),
                        onPressed: () {},
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.work),
                        label: const Text("Curriculo Vitae"),
                        onPressed: () {},
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.school),
                        label: const Text("Skills"),
                        onPressed: () {},
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.contact_mail),
                        label: const Text("Contacto"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
