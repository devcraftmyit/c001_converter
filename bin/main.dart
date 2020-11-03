import 'package:prompter_rt/prompter_rt.dart';
import 'dart:io';
void main() {
  final prompter = new Prompter();
  final choice = prompter.askBinary('Are you here to convert an image');
  if (!choice) {
    exit(0);
  }
}
