import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widg/widg.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SoundContainer(
                  fileName: 'Punch.mp3',
                  containerTitle: 'Puncch',
                  color: Colors.brown,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'SlapOg.mp3',
                  containerTitle: 'SlapOg',
                  color: Colors.blue,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'FightingFast.mp3',
                  containerTitle: 'FightFast',
                  color: Colors.red,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'FightingSlow.mp3',
                  containerTitle: 'FightSlow',
                  color: Colors.yellow,
                  width: 200.0,
                  controller: controller,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SoundContainer(
                  fileName: 'Aayein.mp3',
                  containerTitle: 'Aayein',
                  color: Colors.purple,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'Salam.mp3',
                  containerTitle: 'Salam',
                  color: Colors.orange,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'Walekum.mp3',
                  containerTitle: 'Walekum',
                  color: Colors.teal,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'TelRakh.mp3',
                  containerTitle: 'TelRakh',
                  color: Colors.green,
                  width: 200.0,
                  controller: controller,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SoundContainer(
                  fileName: 'Acchatainaki.mp3',
                  containerTitle: 'Acchatainaki',
                  color: Colors.green,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'acchathikase.mp3',
                  containerTitle: 'acchathikase',
                  color: Colors.blue,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'bujsi.mp3',
                  containerTitle: 'bujsi',
                  color: Colors.red,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'OOOOO.mp3',
                  containerTitle: 'OOOOO',
                  color: Colors.yellow,
                  width: 200.0,
                  controller: controller,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SoundContainer(
                  fileName: 'Polbol.mp3',
                  containerTitle: 'Polbol',
                  color: Colors.purple,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'dhorechi.mp3',
                  containerTitle: 'dhorechi',
                  color: Colors.orange,
                  width: 200.0,
                  controller: controller,
                ),
                SoundContainer(
                  fileName: 'jamin.mp3',
                  containerTitle: 'jamin',
                  color: Colors.teal,
                  width: 200.0,
                  controller: controller,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
