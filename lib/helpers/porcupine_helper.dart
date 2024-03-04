import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:porcupine_flutter/porcupine_manager.dart';

class PorcupineHelper {
  late PorcupineManager _porcupineManager;
  List<String> keywordPaths;
  List<Function> wakeWordCallbacks;

  PorcupineHelper(this.keywordPaths, this.wakeWordCallbacks) {
    _initPorcupine();
  }

  void _initPorcupine() async {
    try {
      _porcupineManager = await PorcupineManager.fromKeywordPaths(
        dotenv.env['PORCUPINE_KEY']!,
        keywordPaths,
        wakeWordCallback,
      );
    } on Error catch (e) {
      print("Error: ${e.toString()}");
    }
  }

  void wakeWordCallback(int keywordIndex) {
    wakeWordCallbacks[keywordIndex]();
  }

  void startListening() async {
    try {
      await _porcupineManager.start();
    } on Error catch (ex) {
      print("Failed to start listening: $ex");
    }
  }

  void dispose() {
    _porcupineManager.delete();
  }
}
