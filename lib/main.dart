import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shower_app/constants/route_constants.dart';
import 'package:shower_app/pages/history_page/history_cubit/history_cubit_cubit.dart';
import 'package:shower_app/pages/history_page/history_page.dart';
import 'package:shower_app/pages/start_page/shower_measurement_cubit/shower_measure_cubit.dart';
import 'package:shower_app/pages/start_page/start_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shower App',
      debugShowCheckedModeBanner: false,
      // home: TestingPorcupine(),

      routes: {
        RouteConstants.home.route: (context) => BlocProvider(
              create: (context) => ShowerMeasureCubit(),
              child: const StartPage(),
            ),
        RouteConstants.history.route: (context) => BlocProvider(
              create: (context) => HistoryCubitCubit(),
              child: const HistoryPage(),
            ),
      },
    );
  }
}
