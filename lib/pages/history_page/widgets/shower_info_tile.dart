import 'package:flutter/material.dart';
import 'package:shower_app/helpers/string_helper.dart';
import 'package:shower_app/models/shower_data.dart';

class ShowerInfoTile extends StatelessWidget {
  final ShowerData showerData;
  const ShowerInfoTile({
    super.key,
    required this.showerData,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Shower'),
      subtitle: Text(
        showerData.date.toString().formatDateTime(),
      ),
      leading: const Icon(
        Icons.water_drop_outlined,
        color: Colors.lightBlue,
      ),
      trailing: Text(
        showerData.seconds.toString().formatDuration(),
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
