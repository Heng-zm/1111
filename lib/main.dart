import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppLoadUrl extends StatelessWidget {
  final String url;

  const AppLoadUrl({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (!await launchUrl(Uri.parse(url))) {
          throw 'Could not launch $url';
        }
      },
      child: const Text('Load URL'),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: AppLoadUrl(
              url:
                  'https://heng-zm.github.io/tretr.github.io/oo.html'), // Replace with your desired URL
        ),
      ),
    ),
  );
}
