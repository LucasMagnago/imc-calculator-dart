import 'dart:io';

String readFromUserWithText(String txt) {
  print(txt);
  var input = stdin.readLineSync();
  return input ?? '';
}
