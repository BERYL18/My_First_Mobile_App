import 'package:flutter/material.dart';

class DiseaseCard extends StatefulWidget {
  const DiseaseCard({super.key});

  @override
  State<DiseaseCard> createState() => _DiseaseCardState();
}

class _DiseaseCardState extends State<DiseaseCard> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Column(children: [
      Container(
          width: 160,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 7,
                    spreadRadius: 5,
                    offset: const Offset(0, 3),
                    color: const Color.fromARGB(255, 221, 221, 221)
                        .withOpacity(0.5))
              ],
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 241, 241, 241)),
              borderRadius: BorderRadius.circular(25)),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset("lib/assets/moringa.png", width: 170, height: 170)
                ],
              ),
              _show
                  ? Positioned(
                      child: Container(
                          height: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(200, 90, 90, 90),
                              borderRadius: BorderRadius.circular(25)),
                          child: ListView(
                            children: [
                              const Center(
                                child: Text("Blight",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 235, 235, 235))),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Text("Symptoms",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 235, 235, 235)))
                                ],
                              ),
                              Wrap(
                                children: const [
                                  Text(
                                      "There is usually some brown spots on the leaf surface accompanied by yellowing and meekness.",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 235, 235, 235)))
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Text("Causes",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 235, 235, 235)))
                                ],
                              ),
                              Wrap(
                                children: const [
                                  Text(
                                      "Disease is caused by lack of sunlight so there is little energy to produce cholorophyll hence yellowing and wilting.",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 235, 235, 235)))
                                ],
                              ),
                            ],
                          )))
                  : Container(
                      margin: const EdgeInsets.only(top: 205, left: 20),
                      child: const Text("Blight",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 79, 79, 79)))),
              Container(
                  margin: const EdgeInsets.only(top: 140, left: 105),
                  child: FloatingActionButton(
                      onPressed: (() {
                        setState(() {
                          _show = !_show;
                        });
                      }),
                      mini: true,
                      child: _show
                          ? const Icon(Icons.arrow_upward_rounded)
                          : const Icon(
                              Icons.arrow_upward_rounded,
                            ))),
            ],
          ))
    ]));
  }
}
