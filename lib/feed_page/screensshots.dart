import 'package:devspectrum/feed_page/documentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ScreenShotPage extends StatefulWidget {
  const ScreenShotPage({super.key});

  @override
  State<ScreenShotPage> createState() => _ScreenShotPageState();
}

class _ScreenShotPageState extends State<ScreenShotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: const Text('Screenshots'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DocumentPage(),
                  ),
                );
              }),
        ),
        body: MasonryGridView.builder(
          itemCount: 6,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(
                'assets/images/post${index + 1}.jpg',
              ),
            ),
          ),
        ));
  }
}
