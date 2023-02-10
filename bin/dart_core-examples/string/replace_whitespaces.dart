main() {
  final s1 = 'This is a string';
  final s2 = 'This   is    a      string';

  print(replaceWhitespaces(s1, '-'));
  print(replaceWhitespaces(s2, '-'));

  print(replaceWhitespacesUsingRegex(s1, '-'));
  print(replaceWhitespacesUsingRegex(s2, '-'));
}

String replaceWhitespaces(String s, String replace) {
  if (s == null) {
    return 'null';
  }

  return s.replaceAll(' ', replace);
}

String replaceWhitespacesUsingRegex(String s, String replace) {
  if (s == null) {
    return 'null';
  }

  // This pattern means "at least one space, or more"
  // \\s : space
  // +   : one or more 
  final pattern = RegExp('\\s+');
  return s.replaceAll(pattern, replace);
}