import 'package:prompter_rt/prompter_rt.dart';
import 'dart:io';

void main() {
  final prompter = new Prompter();
  final choice = prompter.askBinary('Are you here to convert an image');
  if (!choice) {
    exit(0);
  }
  prompter.askMultiple('Select Format', buildFormatOptions());
}

List<Options> buildFormatOptions() {
  return [
    new Options('Convert to jpg', 'jpg'),
    new Options('Convert to png', 'png')
  ];
}
