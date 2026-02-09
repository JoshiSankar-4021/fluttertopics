import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'video_tile.dart';

class Listbuild extends StatefulWidget {
  const Listbuild({super.key});

  @override
  State<Listbuild> createState() => _ListbuildState();
}

class _ListbuildState extends State<Listbuild> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentAudioUrl;
  bool _isPlaying = false;

  List<String> items = [
    "Kathleen",
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "Yamini",
    "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
    "Pavani",
    "https://www.europeanceo.com/wp-content/uploads/2019/08/Lotus-Evija.jpg",
    "Jyothi",
    "https://m.atcdn.co.uk/ect/media/w600/4fbc64ae0e0b480697a3fde1e008a1ba.jpg",
  ];

  bool isUrl(String v) => v.startsWith("http");
  bool isVideo(String v) => v.endsWith(".mp4");
  bool isImage(String v) => v.endsWith(".jpg") || v.endsWith(".jpeg");
  bool isAudio(String v) => v.endsWith(".mp3");

  Future<void> toggleAudio(String url) async {
    if (_currentAudioUrl == url && _isPlaying) {
      await _audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    } else {
      await _audioPlayer.stop();
      await _audioPlayer.play(UrlSource(url));
      setState(() {
        _currentAudioUrl = url;
        _isPlaying = true;
      });
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Builder"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          // TEXT
          if (!isUrl(item)) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }

          // IMAGE
          if (isImage(item)) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                item,
                height: 200,
                fit: BoxFit.cover,
              ),
            );
          }

          // VIDEO
          if (isVideo(item)) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: VideoTile(url: item),
            );
          }

          // AUDIO
          if (isAudio(item)) {
            final isThisPlaying =
                _currentAudioUrl == item && _isPlaying;

            return ListTile(
              leading: Icon(
                isThisPlaying
                    ? Icons.pause_circle
                    : Icons.play_circle,
                size: 36,
              ),
              title: const Text("Audio Track"),
              onTap: () => toggleAudio(item),
            );
          }


          return const SizedBox.shrink();
        },
      ),
    );
  }
}
