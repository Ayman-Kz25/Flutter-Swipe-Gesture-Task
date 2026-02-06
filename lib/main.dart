import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    );
  }
}

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int currentIndex = 0;
  final List<String> images = [
    'assets/images/1.png',
    'assets/images/2.jpg',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Gallery"),
        backgroundColor: theme.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onPanUpdate: (details){
          //swiping in right direction -->
          if(details.delta.dx > 0){
            setState(() {
              currentIndex = (currentIndex - 1) % images.length;
              if(currentIndex < 0){
                currentIndex = images.length - 1;
              }
            });
          }
          //swiping in left direction <--
          if(details.delta.dx < 0){
            setState(() {
              currentIndex = (currentIndex + 1) % images.length;
            });
          }
        },
        child: Center(
          child: Image.asset(
            images[currentIndex],
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}
