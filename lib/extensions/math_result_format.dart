extension MathResultFormat on double {
  String toStringFixedPrecision() {
    RegExp regex = RegExp(r"[.](0+)$");
    RegExp regex2 = RegExp(r"[.](0+)$]");
    if (toStringAsPrecision(6).contains("e+")) {
      return toStringAsExponential(6);
    }
    return toStringAsPrecision(6).replaceAll(regex, '').replaceAll(regex2, '');
  }
}
