import 'package:intl/intl.dart';

class TFormater {
  TFormater._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd,MMM,yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: 'VND').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    final result =
        phoneNumber.length == 10 ? '+84${phoneNumber.substring(1)}' : '';
    return result;
  }
}
