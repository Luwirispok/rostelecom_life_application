void main() {
  RegExp exp = RegExp(r'<span\sstyle="color:\sred;padding:2px">(.*?)<\/span>');
  String? str = null;
  // RegExpMatch? match = exp.firstMatch(str);
  // print(exp.firstMatch(str)?.group(1) ?? str);
  print(_clearOfDebris(str));
}

String? _clearOfDebris(String? str) => str != null
    ? RegExp(r'<span\sstyle="color:\sred;padding:2px">(.*?)<\/span>').firstMatch(str)?.group(1) ?? str
    : null;
