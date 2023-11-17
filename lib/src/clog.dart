import 'package:logger/logger.dart';

class Log {
  static final Logger _logger = Logger(
    // printer: PrefixPrinter(PrettyPrinter()),
      printer: PrefixPrinter(
          PrettyPrinter(
            stackTraceBeginIndex: 5,
            methodCount: 1, // number of method calls to be displayed
            errorMethodCount: 8, // number of method calls if stacktrace is provided
            lineLength: 120, // width of the output
            colors: true, // Colorful log messages
            printEmojis: true, // Print an emoji for each log message
            printTime: false // Should each log print contain a timestamp
        )
      ),
  );


  static void v(dynamic message) {
    _logger.v(message);
  }

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void i(dynamic message) {
    _logger.i(message);
  }

  static void w(dynamic message) {
    _logger.w(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }

  static void wtf(dynamic message) {
    _logger.wtf(message);
  }
}
