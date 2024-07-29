class TValidator {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Vui lòng nhập trường này";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return "Email không hợp lệ";
    }

    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Vui lòng nhập trường này";
    }

    if (value.length < 6) {
      return "Mật khẩu phải có ít nhất 6 ký tự";
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Mật khẩu bao gồm chữ in hoa";
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Mật khẩu bao gồm tối thiểu 1 số";
    }

    if (!value.contains(RegExp(r'[!@#$%&^*(),.?":;{}|~<>]'))) {
      return "Mật khẩu bao gồm một ký tự đặc biệt";
    }
    return null;
  }

  static String? validatePhoneNumber(String value) {
    if (value.isEmpty) {
      return "Vui lòng nhập trường này";
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return "Số điện thoại không hợp lệ";
    }
    return null;
  }
}
