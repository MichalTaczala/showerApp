import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shower_app/cubit/shower_measure_cubit.dart';
import 'package:shower_app/start_page.dart';

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
      home: BlocProvider(
        create: (context) => ShowerMeasureCubit(),
        child: const StartPage(),
      ),
    );
  }
}
