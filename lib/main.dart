import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 15, 15, 15)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'RightKey',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                noteKey(Colors.yellow, 'DOH'),
                noteKey(Colors.red, 'RAY'),
                noteKey(Colors.pink, 'MI'),
                noteKey(Colors.green, 'FAH'),
                noteKey(Colors.orange, 'SOH'),
                noteKey(Colors.amber, 'LAH'),
                noteKey(Colors.blue, 'TI'),
                noteKey(Colors.black, 'DOH'),
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    size: 50,
                  ),
                  onPressed: () {
                    // add functionality here
                    playSound();
                    null;
                  },
                )
              ]),
        ),
      ),
    );
  }

  Future playSound() async {
    String audioLink = 'me.mp3';
    final player = AudioPlayer();
    // await player.setSource(AssetSource(audioLink));
    await player.play(AssetSource(audioLink));
  }

  SizedBox noteKey(Color color, String keyType) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        ),
        onPressed: null,
        child: Text(
          keyType,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
    );
  }
}
