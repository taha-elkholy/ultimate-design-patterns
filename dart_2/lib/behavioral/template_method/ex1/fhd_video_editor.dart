import 'package:dart_2/behavioral/template_method/ex1/video_editor.dart';

class FHDVideoEditor extends VideoEditor {
  @override
  void applyColorCorrection() {
    print('Apply FHD favorite color correction...');
  }

  @override
  void renderingTheVideo() {
    print('Rendering FHD video...');
  }
}
