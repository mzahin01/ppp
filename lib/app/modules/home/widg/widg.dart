import 'package:flutter/material.dart';
import 'package:prank_er_baccha/app/modules/home/controllers/home_controller.dart';

class SoundContainer extends StatelessWidget {
  final String fileName;
  final String containerTitle;
  final Color? color;
  final double? width;
  final HomeController controller;

  const SoundContainer({
    Key? key,
    required this.controller,
    required this.fileName,
    required this.containerTitle,
    this.color,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: color ?? Colors.blue, // Use provided color or default to blue
        ),
        child: InkWell(
          onTap: () {
            controller.playSound(fileName);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.music_note,
                size: 50.0, // Increased icon size
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Text(
                containerTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0, // Increased text size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
