import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbuild extends StatefulWidget{
  const Listbuild({super.key});

  @override
  State<StatefulWidget> createState() =>_listbuildState();

}
class _listbuildState extends State<Listbuild>{
  final ScrollController _scrollController = ScrollController();

  List<String> names =[
    "Kathleen",
    "https://res.cloudinary.com/dir0f6ufp/video/upload/v1759077362/samples/cld-sample-video.mp4",
    "Yamini",
    "https://www.carpro.com/hs-fs/hubfs/2023-Chevrolet-Corvette-Z06-credit-chevrolet.jpeg?width=1020&name=2023-Chevrolet-Corvette-Z06-credit-chevrolet.jpeg",
    "Pavani",
    "https://www.europeanceo.com/wp-content/uploads/2019/08/Lotus-Evija.jpg",
    "Jyothi",
    "https://m.atcdn.co.uk/ect/media/w600/4fbc64ae0e0b480697a3fde1e008a1ba.jpg",
    "Mangala",
    "https://res.cloudinary.com/dir0f6ufp/video/upload/v1767470414/media_user/1/post_1_1767470403815_AA%20SHIVA.mp4.mp4",
    "Janapala",
    "https://res.cloudinary.com/dir0f6ufp/video/upload/v1767444978/media_user/1/post_1_1767444962546_demo.mp4.mp4",
    "Aamanda",
    "https://res.cloudinary.com/dir0f6ufp/video/upload/v1767470416/media_user/1/post_1_1767470403795_raviteja.mp4.mp4",
    "Cooke",
    "https://www.sixt.com/magazine/wp-content/uploads//sites/6/2022/04/Bugatti-Bolide-Hypercar-resize-1024x683.jpg"
  ];

  bool isUrl(String value)=> value.startsWith("http");

  bool isVideo(String value)=>
      value.endsWith(".mp4");
  bool isImage(String value)=>
      value.endsWith("jpg") ||
          value.endsWith("jpeg");


  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Builder"),
        backgroundColor: Colors.blueGrey,
      ),
        body: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: ListView.builder(
            controller: _scrollController, // ⭐ ADD THIS
            itemCount: names.length,
            itemBuilder: (context, index) {
              final item = names[index];

              if (!isUrl(item)) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }

              if (isImage(item)) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    item,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                );
              }

              if (isVideo(item)) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    color: Colors.black12,
                    child: const Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        size: 64,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
    );
  }
}