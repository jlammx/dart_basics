void main() {
  replaceByDot();
  repleaceByStrign();
}

/// Replace all special characters by a dot
Future<void> replaceByDot() async {
  const String text = r'abc-dfs@#$#%#$This';
  final result = text.replaceAll(RegExp('[^A-Za-z0-9]'), '.');
  print(result);
}

/// Remove all special characters
Future<void> repleaceByStrign() async {
  const String text = r'abc-dfs@#$#%#$This';
  final result = text.replaceAll(RegExp('[^A-Za-z0-9]'), '');
  print(result);
}