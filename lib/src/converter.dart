import 'dart:io';
import 'package:image/image.dart';

convertImage(FileSystemEntity selectedFile, String format) {
  final rawImage = (selectedFile as File).readAsBytesSync();
  final image = decodeImage(rawImage);
  var newImage;
  if (format == 'jpg') {
    newImage = encodeJpg(image);
  } else if (format == 'png') {
    newImage = encodePng(image);
  } else {
    print('Unsupported File Type');
  }
  new File(replaceExtension(selectedFile.path,format)).writeAsBytesSync(newImage);
}

String replaceExtension(String path, String newExtension) {
  return path.replaceAll(RegExp(r"(jpg|png|jpeg)"), newExtension);
}
