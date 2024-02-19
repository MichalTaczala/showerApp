import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shower_app/cubit/shower_measure_cubit.dart';
import 'package:shower_app/enums/state.dart';
import 'package:shower_app/widgets/outlined_text.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Timer? _timer;
  double heightOfUpperPart = 130;
  double opacityOfTimer = 0;

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        context.read<ShowerMeasureCubit>().incrementSeconds();
      },
    );
    heightOfUpperPart = 30;
    opacityOfTimer = 1;
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
    context.read<ShowerMeasureCubit>().resetTimer();
    heightOfUpperPart = 130;
    opacityOfTimer = 0;
  }

  String _formatSecondsIntoClockFormat(int seconds) {
    return "${(seconds / 60).floor()}:${(seconds % 60).toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/background_image_v2.jpg",
            ),
          ),
        ),
        child: BlocBuilder<ShowerMeasureCubit, ShowerMeasureState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnimatedSize(
                      duration: const Duration(milliseconds: 50),
                      child: SizedBox(
                        height: heightOfUpperPart,
                      ),
                    ),
                    const Center(
                      child: OutlinedText(
                        data: "Shower App",
                      ),
                    ),
                    if (state.showerState == StateEnum.duringShower)
                      AnimatedOpacity(
                        opacity: opacityOfTimer,
                        duration: const Duration(seconds: 30),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularPercentIndicator(
                            radius: 120,
                            percent: state.numberOfSeconds % 30 / 30,
                            lineWidth: 10,
                            progressColor: Colors.white,
                            center: Text(
                              _formatSecondsIntoClockFormat(
                                  state.numberOfSeconds),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                    const Spacer(),
                    if (state.showerState == StateEnum.basic)
                      ElevatedButton(
                        onPressed: () => {
                          context.read<ShowerMeasureCubit>().startShower(),
                          _startTimer(),
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Start Shower",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ),
                    if (state.showerState == StateEnum.duringShower)
                      ElevatedButton(
                        onPressed: () => {
                          context.read<ShowerMeasureCubit>().endShower(),
                          _stopTimer(),
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Stop",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    Opacity(
                      opacity: state.showerState == StateEnum.basic ? 1 : 0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "History",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}