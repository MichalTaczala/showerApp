extension DateTimeExtension on String {
  String formatDateTime() {
    try {
      final dateTime = DateTime.parse(this);
      final year = dateTime.year.toString();
      final month = dateTime.month.toString().padLeft(2, '0');
      final day = dateTime.day.toString().padLeft(2, '0');
      final hour = dateTime.hour.toString().padLeft(2, '0');
      final minute = dateTime.minute.toString().padLeft(2, '0');

      return '$year-$month-$day $hour:$minute';
    } catch (e) {
      return 'Invalid datetime format';
    }
  }

  String formatDuration() {
    try {
      final seconds = int.parse(this);
      if (seconds < 60) {
        return '$seconds sec';
      } else {
        final minutes = (seconds ~/ 60).toString();
        final remainingSeconds = (seconds % 60).toString().padLeft(2, '0');
        return '$minutes:$remainingSeconds min';
      }
    } catch (e) {
      return 'Invalid duration format';
    }
  }
}
