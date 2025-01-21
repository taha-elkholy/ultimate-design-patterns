import 'package:dart_2/behavioral/template_method/ex1/fhd_video_editor.dart';
import 'package:dart_2/behavioral/template_method/ex1/hd_video_editor.dart';
import 'package:dart_2/behavioral/template_method/ex1/sd_video_editor.dart';

void main() {
  final fhd = FHDVideoEditor();
  fhd.editVideo();
  print('________________________');
  final hd = HDVideoEditor();
  hd.editVideo();
  print('________________________');
  final sd = SDVideoEditor();
  sd.editVideo();
}
