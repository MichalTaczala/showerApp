import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shower_app/constants/route_constants.dart';
import 'package:shower_app/cubit/shower_measure_cubit.dart';
import 'package:shower_app/pages/history_page.dart';
import 'package:shower_app/pages/start_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shower App',
      debugShowCheckedModeBanner: false,
      routes: {
        RouteConstants.home.route: (context) => BlocProvider(
              create: (context) => ShowerMeasureCubit(),
              child: const StartPage(),
            ),
        RouteConstants.history.route: (context) => const HistoryPage(),
      },
    );
  }
}
