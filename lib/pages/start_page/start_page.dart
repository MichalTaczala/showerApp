import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shower_app/constants/route_constants.dart';
import 'package:shower_app/enums/state.dart';
import 'package:shower_app/pages/start_page/shower_measurement_cubit/shower_measure_cubit.dart';
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

  @override
  void initState() {
    super.initState();
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        context.read<ShowerMeasureCubit>().incrementSeconds();
      },
    );
    heightOfUpperPart = 30;
    opacityOfTimer = 1;
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
    context.read<ShowerMeasureCubit>().resetTimer();
    heightOfUpperPart = 130;
    opacityOfTimer = 0;
  }

  String formatSecondsIntoClockFormat(int seconds) {
    return "${(seconds / 60).floor()}:${(seconds % 60).toString().padLeft(2, '0')}";
  }

  void showShouldSaveResultsDialog(BuildContext context, int seconds) {
    showDialog(
      context: context,
      builder: (context1) {
        return AlertDialog(
          title: const Text("Save Results"),
          content: Text(
            "Do you want to save your shower?\nIt took you ${formatSecondsIntoClockFormat(seconds)}",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context1).pop();
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                context.read<ShowerMeasureCubit>().saveResults(seconds);
                Navigator.pop(context1);
                Navigator.of(context1).pushReplacementNamed(
                  RouteConstants.history.route,
                );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
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
                        shadowSize: 0.7,
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
                            center: OutlinedText(
                              data: formatSecondsIntoClockFormat(
                                  state.numberOfSeconds),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                              ),
                              shadowSize: 0.5,
                            ),
                          ),
                        ),
                      ),
                    const Spacer(),
                    if (state.showerState == StateEnum.basic)
                      ElevatedButton(
                        onPressed: () => {
                          context.read<ShowerMeasureCubit>().startShower(),
                          startTimer(),
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
                          stopTimer(),
                          showShouldSaveResultsDialog(
                            context,
                            state.numberOfSeconds,
                          ),
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
                        onPressed: () => Navigator.of(context)
                            .pushReplacementNamed(RouteConstants.history.route),
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
