import 'package:flutter/material.dart';
import 'package:porcupine_flutter/porcupine_manager.dart';

class TestingPorcupine extends StatefulWidget {
  const TestingPorcupine({super.key});

  @override
  State<TestingPorcupine> createState() => _TestingPorcupineState();
}

class _TestingPorcupineState extends State<TestingPorcupine> {
  late PorcupineManager _porcupineManager;

  @override
  void initState() {
    super.initState();
    _initPorcupine();
  }

  void _initPorcupine() async {
    try {
      _porcupineManager = await PorcupineManager.fromKeywordPaths(
        "j+v69u/ilX2dS7Bu/dkfGQtO4T34NjqvvApRDT7Ubu4dw8XFOFZaVg==",
        [
          "assets/porcupine_keywords/Start-shower_en_ios_v3_0_0.ppn",
          "assets/porcupine_keywords/Stop-shower_en_ios_v3_0_0.ppn",
        ],
        wakeWordCallback,
      );
    } on Error catch (e) {
      print("Error: ${e.toString()}");
    }
  }

  void wakeWordCallback(int keywordIndex) {
    //   // This function is called when the wake word is detected.
    //   // Perform your action upon wake word detection here.
    if (keywordIndex == 0) {
      print("Start shower detected");
    } else if (keywordIndex == 1)
      print("Stop shower detected");
    else
      print("Unknown keyword detected");
    //   // Example: You can stop the manager if you only need a single detection
  }

  void startListening() async {
    try {
      await _porcupineManager.start();
    } on Error catch (ex) {
      print("Failed to start listening: $ex");
    }
  }

  @override
  dispose() {
    _porcupineManager.delete();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testing Porcupine"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: startListening,
          child: const Text("start listening"),
        ),
      ),
    );
  }
}
