import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int _contador1 = 0;
  int _contador2 = 0;
  Color _colorBackGround = const Color.fromARGB(255, 36, 36, 36);
  Icon _iconLightDark = const Icon(Icons.light_mode);
  bool _darkMode = true;

  void addPuntuacionSimple1() {
    setState(() {
      _contador1 += 1;
    });
  }

  void addPuntuacionDoble1() {
    setState(() {
      _contador1 += 2;
    });
  }

  void addPuntuacionTriple1() {
    setState(() {
      _contador1 += 3;
    });
  }

  void addPuntuacionSimple2() {
    setState(() {
      _contador2 += 1;
    });
  }

  void addPuntuacionDoble2() {
    setState(() {
      _contador2 += 2;
    });
  }

  void addPuntuacionTriple2() {
    setState(() {
      _contador2 += 3;
    });
  }

  void changeColor() {
    setState(() {
      if (_darkMode) {
        _iconLightDark = const Icon(Icons.dark_mode);
        _colorBackGround = const Color.fromARGB(255, 192, 192, 192);
        _darkMode = false;
      } else {
        _iconLightDark = const Icon(Icons.light_mode);
        _colorBackGround = const Color.fromARGB(255, 36, 36, 36);
        _darkMode = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colorBackGround,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: changeColor, child: _iconLightDark),
              ),
              Image.network(
                  width: 150,
                  'https://upload.wikimedia.org/wikipedia/zh/thumb/0/03/National_Basketball_Association_logo.svg/640px-National_Basketball_Association_logo.svg.png'),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    const Text(
                      'EQUIPO 1',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                    Text(
                      '$_contador1',
                      style: const TextStyle(
                          fontSize: 70, color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionSimple1,
                          child: const Text(
                            'TIRO SIMPLE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 17, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionDoble1,
                          child: const Text('TIRO DOBLE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 17, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionTriple1,
                          child: const Text('TIRO TRIPLE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 17, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'EQUIPO 2',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                    Text(
                      '$_contador2',
                      style: const TextStyle(
                          fontSize: 70, color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionSimple2,
                          child: const Text(
                            'TIRO SIMPLE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 17, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionDoble2,
                          child: const Text('TIRO DOBLE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 17, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: addPuntuacionTriple2,
                          child: const Text('TIRO TRIPLE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 17, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
