import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeController extends GetxController {
  void playSound(String fileName) async {
    final AudioPlayer player = AudioPlayer();
    await player.play(AssetSource(fileName));
  }
}
