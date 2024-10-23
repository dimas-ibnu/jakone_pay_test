extension StringFormatter on String {
  /// Format String phone number to 62
  /// ex: ["082654646".toPhone62()] => "6282654646"
  String toPhone62() {
    if (startsWith("0")) {
      return replaceFirst("0", "62");
    } else if (startsWith("+62")) {
      return replaceFirst("+62", "62");
    } else if (startsWith("8")) {
      return replaceFirst("8", "628");
    } else {
      return this;
    }
  }

  /// Format Name to Capitalize
  /// ex: ["john doe".toCapitalize()] => "John Doe"

  String toCapitalize() {
    return split(" ").map((e) => e.toCapitalize()).join(" ");
  }
}
