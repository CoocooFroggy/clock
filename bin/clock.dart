void main(List<String> arguments) {
  // % 12

  for (int hour = 0; hour < 12; hour++) {
    for (int minute = 0; minute < 60; minute++) {
      final minuteAngle = minuteToAngle(minute);
      final hourAngle = hourAndMinuteToAngle(hour, minute);

      if (minuteAngle > hourAngle) {
        print('------');
        // 02:15
        print(
            '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}');
        print(hourAngle);
        print(minuteAngle);
        break;
      }
    }
  }
}

/// Input a minute (XX:15) and output an angle of the minute hand
/// 45(º)
double minuteToAngle(int time) {
  return ((time % 60) / 60) * 360;
}

/// A clock hour hand moves 30º every hour
/// hourAndMinuteToAngle(9, 30)
/// 9:30
double hourAndMinuteToAngle(int hour, int minute) {
  return ((hour % 12) * 30) + 30 * ((minute % 60) / 60);
}
