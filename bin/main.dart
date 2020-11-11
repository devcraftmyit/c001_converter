import 'package:prompter_rt/prompter_rt.dart';
import 'dart:io';

void main() {
  final prompter = new Prompter();
  final choice = prompter.askBinary('Are you here to convert an image');
  if (!choice) {
    exit(0);
  }
  final format = prompter.askMultiple('Select Format', buildFormatOptions());
  prompter.askMultiple('Select an Image to Convert', buildFileOptions());
}

List<Options> buildFormatOptions() {
  return [
    new Options('Convert to jpg', 'jpg'),
    new Options('Convert to png', 'png')
  ];
}

List<Options> buildFileOptions() {
// get a reference to the current working directory ] note this is the [bin ] folder in this exercise.
  return Directory.current.listSync().where((entity) {
    return FileSystemEntity.isFileSync(entity.path) &&
        entity.path.contains(new RegExp(r'\.(png|jpg|jpeg)'));
  }).map((entity) {
    //Note this will not work for all operating system - final fileName = entity.path.split('/').last;
    // replace with the blow call [ Platform.pathSeparator ]
    final fileName = entity.path.split(Platform.pathSeparator).last;
    return new Options(fileName, entity);
  }).toList();
  // Look through the list and only find the images //

// Take all the images and create an option object for each // ]
}
