import 'package:flutter/material.dart';
import 'package:prank_er_baccha/app/modules/home/controllers/home_controller.dart';

class SoundContainer extends StatefulWidget {
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
  State<SoundContainer> createState() => _SoundContainerState();
}

class _SoundContainerState extends State<SoundContainer> {
  bool _isPlaying = true;

  updateIsPlaying() {
    setState(() {
      _isPlaying = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.color ?? Colors.blue,
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              _isPlaying = !_isPlaying;
            });
            widget.controller
                .playSound(widget.fileName, _isPlaying, updateIsPlaying);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                _isPlaying ? Icons.play_arrow : Icons.pause,
                size: 50.0,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              Text(
                widget.containerTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
