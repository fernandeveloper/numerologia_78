import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:numerologia/data/respuestas.dart';
import 'package:numerologia/utils/formulas.dart';

class NumeracionTantricaMobile extends StatefulWidget {
  const NumeracionTantricaMobile({super.key});

  @override
  _NumeracionTantricaMobileState createState() =>
      _NumeracionTantricaMobileState();
}

class _NumeracionTantricaMobileState extends State<NumeracionTantricaMobile> {
  // Mapa de descripciones basadas en los números

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 231, 245),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: const Text(
          'Numerología Tántrica Mobile',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 8, right: 80),
                child: Text(
                  'Fecha de nacimiento:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(57, 193, 79, 228),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text('Dia', style: TextStyle(fontSize: 18)),
                              NumberPicker(
                                value: selectedDay,
                                itemHeight: 50,
                                itemWidth: 65,
                                textStyle: const TextStyle(
                                    color: Colors.purple, fontSize: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                minValue: 1,
                                maxValue: 31,
                                onChanged: (value) =>
                                    setState(() => selectedDay = value),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            const Text('Mes', style: TextStyle(fontSize: 18)),
                            NumberPicker(
                              value: selectedMonth,
                              itemHeight: 50,
                              itemWidth: 65,
                              textStyle: const TextStyle(
                                  color: Colors.purple, fontSize: 16),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              minValue: 1,
                              maxValue: 12,
                              onChanged: (value) =>
                                  setState(() => selectedMonth = value),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Column(
                          children: [
                            const Text('Año', style: TextStyle(fontSize: 18)),
                            NumberPicker(
                              value: selectedYear,
                              itemHeight: 50,
                              itemWidth: 95,
                              textStyle: const TextStyle(
                                  color: Colors.purple, fontSize: 16),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              minValue: 1900,
                              maxValue: 2023,
                              onChanged: (value) {
                                setState(() => selectedYear = value);
                                // print(selectedYear);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 2),
                  SizedBox(
                    width: 65,
                    height: 130,
                    child: Image.asset('assets/images/scroll.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 360,
                height: 260,
                decoration: BoxDecoration(
                  // color: Color.fromARGB(57, 188, 2, 245),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'ALMA',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        '${reduceToSingleDigit(selectedDay)}',
                                        style: const TextStyle(fontSize: 32),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.red,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('KARMA',
                                          style: TextStyle(fontSize: 18)),
                                      Text(
                                          '${reduceToSingleDigit(selectedMonth)}',
                                          style: const TextStyle(fontSize: 32)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'REGALO DIVINO',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      '${reduceToSingleDigit(selectedYear % 100)}',
                                      style: const TextStyle(fontSize: 32),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.yellow,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'DESTINO',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${reduceToSingleDigit(selectedYear)}',
                                      style: const TextStyle(fontSize: 32),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'VIDA: ${sumDateDigits()}',
                style: const TextStyle(fontSize: 24, color: Colors.purple),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    // Mostrar las descripciones según los números resultantes
                    Column(
                      children: [
                        Text(
                          'ALMA: ${reduceToSingleDigit(selectedDay)}',
                          style:
                              const TextStyle(fontSize: 22, color: Colors.blue),
                        ),
                        const Text(
                          'Como eres en tu interior, la relacion contigo mism@',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                        Text(
                          'ALMA: ${almaDescriptions[reduceToSingleDigit(selectedDay)]!}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          'REGALO DIVINO: ${reduceToSingleDigit(selectedYear % 100)}',
                          style: const TextStyle(
                              fontSize: 22, color: Colors.green),
                        ),
                        const Text(
                          'Don, poder o habilidad, que nos ha sido otorgada en esta vida: por esto es un regalo.',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                        Text(
                          'DONES: ${donesDescriptions[reduceToSingleDigit(selectedYear % 100)]}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          'KARMA: ${reduceToSingleDigit(selectedMonth)}',
                          style:
                              const TextStyle(fontSize: 22, color: Colors.red),
                        ),
                        const Text(
                          'Aspecto que va a determinar cómo nos relacionamos con el mundo exterior',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                        Text(
                          'KARMA: ${karmaDescriptions[reduceToSingleDigit(selectedMonth)]!}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          'DESTINO: ${reduceToSingleDigit(selectedYear)}',
                          style: const TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 141, 127, 2)),
                        ),
                        const Text(
                          'Poder o habilidad que hemos trabajado y elaborado en vidas pasadas y traemos a ésta',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                        Text(
                          'DESTINO: ${destinoDescriptions[reduceToSingleDigit(selectedYear)]!}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),

                    Column(
                      children: [
                        Text('VIDA: ${sumDateDigits()}',
                            style: const TextStyle(
                                fontSize: 24, color: Colors.purple)),
                        const Text(
                            ' Lo que deberás hacer para obtener la realización en esta vida',
                            style:
                                TextStyle(fontSize: 18, color: Colors.purple)),
                        Text(
                          '${misionDescriptions[sumDateDigits()]}',
                          style:
                              const TextStyle(fontSize: 18, letterSpacing: .5),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
