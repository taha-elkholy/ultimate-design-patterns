import 'package:dart_2/behavioral/template_method/ex1/video_editor.dart';

class HDVideoEditor extends VideoEditor {
  @override
  void applyColorCorrection() {
    print('Apply HD favorite color correction...');
  }

  @override
  void renderingTheVideo() {
    print('Rendering HD video...');
  }
}
