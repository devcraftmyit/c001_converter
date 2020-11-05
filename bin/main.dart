import 'package:prompter_rt/prompter_rt.dart';
import 'dart:io';

void main() {
  final prompter = new Prompter();
  final choice = prompter.askBinary('Are you here to convert an image');
  if (!choice) {
    exit(0);
  }
  final format = prompter.askMultiple('Select Format', buildFormatOptions());
  //prompter.askMultiple('Select an Image to Convert', buildFileOptions());
  buildFileOptions();
}

List<Options> buildFormatOptions() {
  return [
    new Options('Convert to jpg', 'jpg'),
    new Options('Convert to png', 'png')
  ];
}

List<Options> buildFileOptions() {
// get a reference to the current working directory ] note this is the [bin ] folder in this exercise.
  final currentDirectory = Directory.current;
// Find all the files and folders in this directory. // ] 
  final entities = currentDirectory.listSync();
  print(entities);
   // Look through the list and only find the images // ] 
// Take all the images and create an option object for each // ] 

}
