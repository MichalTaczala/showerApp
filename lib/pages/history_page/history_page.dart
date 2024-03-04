import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shower_app/constants/route_constants.dart';
import 'package:shower_app/pages/history_page/history_cubit/history_cubit_cubit.dart';
import 'package:shower_app/pages/history_page/widgets/shower_info_tile.dart';
import 'package:shower_app/widgets/outlined_text.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HistoryCubitCubit>().getShowers();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const OutlinedText(
            data: 'History Page',
            shadowSize: 0.8,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.adaptive.arrow_back_outlined,
              color: Colors.lightBlue,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                RouteConstants.home.route,
              );
            },
          )),
      body: BlocBuilder<HistoryCubitCubit, HistoryCubitState>(
        builder: (context, state) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.purple.withOpacity(0.4),
                  BlendMode.darken,
                ),
                image: const AssetImage('assets/backgroun_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.showerData.length,
                      itemBuilder: (context, index) => Card(
                        color: Colors.white.withOpacity(0.8),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                        child: ShowerInfoTile(
                          showerData: state.showerData.elementAt(index),
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
    );
  }
}
