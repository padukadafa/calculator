extension MathResultFormat on double {
  String toStringFixedPrecision() {
    RegExp regex = RegExp(r"[.0+](0+)$");
    if (toStringAsPrecision(6).contains("e+")) {
      return toStringAsPrecision(6);
    }
    return toStringAsPrecision(6).replaceAll(regex, '');
  }
}
