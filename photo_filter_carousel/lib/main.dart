import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Minta izin kamera
  await Permission.camera.request();

  if (await Permission.camera.isGranted) {
    cameras = await availableCameras();
    runApp(const MyApp());
  } else {
    runApp(const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Izin kamera tidak diberikan')),
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraFilterPage(),
    );
  }
}

class CameraFilterPage extends StatefulWidget {
  const CameraFilterPage({super.key});

  @override
  State<CameraFilterPage> createState() => _CameraFilterPageState();
}

class _CameraFilterPageState extends State<CameraFilterPage> {
  late CameraController _controller;
  bool _isCameraInitialized = false;
  int _selectedFilterIndex = 0;

  final List<Color> _filters = [
    Colors.transparent,
    Colors.purple.withOpacity(0.4),
    Colors.blue.withOpacity(0.4),
    Colors.green.withOpacity(0.4),
    Colors.orange.withOpacity(0.4),
    Colors.red.withOpacity(0.4),
  ];

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    final firstCamera = cameras.first;
    _controller = CameraController(firstCamera, ResolutionPreset.high);
    await _controller.initialize();
    if (!mounted) return;
    setState(() {
      _isCameraInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isCameraInitialized
          ? Stack(
              children: [
                CameraPreview(_controller),

                // Filter overlay
                Container(color: _filters[_selectedFilterIndex]),

                // Carousel filter selector
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _filters.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedFilterIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: _selectedFilterIndex == index
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: _filters[index]
                                  .withOpacity(index == 0 ? 0 : 1),
                              radius: 30,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
