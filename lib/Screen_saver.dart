import 'dart:async';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen ({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Timer? _timer;
  bool _showScreenSaver = false;
  final Duration _idleDuration = Duration(seconds: 5);

  void _resetTimer() {
    _timer?.cancel();

    setState(() {
      _showScreenSaver = false;
    });

    _timer = Timer(_idleDuration, () {
      setState(() {
        _showScreenSaver = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _resetTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _resetTimer,
      onPanDown: (_) => _resetTimer(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Screen Saver"),
          backgroundColor: Colors.teal,
        ),
        body: Stack(
          children: [
            Center(
              child: Text(
                "Main App Content",
                style: TextStyle(fontSize: 26),
              ),
            ),

            if (_showScreenSaver)
              Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    "SCREEN SAVER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
