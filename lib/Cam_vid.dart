import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras=[];

class Camera extends StatefulWidget{
  const Camera({super.key});

  @override
  State<StatefulWidget> createState()=>_CameraState();

}
class _CameraState extends State<Camera> {
  CameraController? controller;

  @override
  void initState(){
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async{
    cameras=await availableCameras();

    controller=CameraController(
      cameras[0],
      ResolutionPreset.medium,
    );

    await controller!.initialize();
    if(mounted) setState(() {});
  }

  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Tester"),
        backgroundColor: Colors.grey,
      ),
      body:  controller == null || !controller!.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : CameraPreview(controller!), // Display camera preview
      floatingActionButton: controller == null
          ? null
          : FloatingActionButton(
        child: const Icon(Icons.camera),
        onPressed: () async {
          // Take a picture
          final image = await controller!.takePicture();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Photo saved at ${image.path}")),
          );
        },
      ),
    );
  }
}