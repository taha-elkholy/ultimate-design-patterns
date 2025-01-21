abstract class VideoEditor {
  void applyColorCorrection();
  void renderingTheVideo();

  void _enhancingVideoQuality() {
    print('enhancing video quality');
  }

  void _enhancingAudioQuality() {
    print('enhancing audio quality');
  }

  void _applyingSomeFilters() {
    print('applying some filters');
  }

  void editVideo() {
    _enhancingVideoQuality();
    applyColorCorrection();
    _enhancingAudioQuality();
    _applyingSomeFilters();
    renderingTheVideo();
  }
}
