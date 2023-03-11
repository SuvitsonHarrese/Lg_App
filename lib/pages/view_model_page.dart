import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ViewModel extends StatelessWidget {
  const ViewModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Model viewer for displaying 3d Models
      child: ModelViewer(
        src: "images/car.glb", //  glb file from images folder
        backgroundColor: const Color.fromARGB(255, 146, 186, 255),
      ),
    );
  }
}
