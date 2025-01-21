import 'package:dart_2/behavioral/template_method/ex1/video_editor.dart';

class SDVideoEditor extends VideoEditor {
  @override
  void applyColorCorrection() {
    print('Apply SD favorite color correction...');
  }

  @override
  void renderingTheVideo() {
    print('Rendering SD video...');
  }
}
