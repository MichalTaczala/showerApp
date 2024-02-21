import 'package:freezed_annotation/freezed_annotation.dart';

part 'shower_data.freezed.dart';

@freezed
class ShowerData with _$ShowerData {
  const factory ShowerData({
    required Duration time,
    required DateTime date,
  }) = _ShowerData;
}
