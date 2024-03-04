import 'package:freezed_annotation/freezed_annotation.dart';

part 'shower_data.freezed.dart';
part 'shower_data.g.dart';

@freezed
class ShowerData with _$ShowerData {
  const factory ShowerData({
    required int seconds,
    required DateTime date,
  }) = _ShowerData;

  factory ShowerData.fromJson(Map<String, dynamic> json) =>
      _$ShowerDataFromJson(json);
}
