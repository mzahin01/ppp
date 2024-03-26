import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeController extends GetxController {
  final AudioPlayer _player = AudioPlayer();

  playSound(String fileName, bool isPlaying, Function updateIsPlaying) async {
    if (isPlaying) {
      await _player.pause();
    } else {
      await _player.play(AssetSource(fileName));
    }

    _player.onPlayerComplete.listen((event) {
      updateIsPlaying.call();
    });
  }

  @override
  void onClose() {
    _player.dispose();
    super.onClose();
  }
}
