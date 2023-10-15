import 'package:devspectrum/post_page/uploadscreenshot.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Upload your project'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            children: [
              Card(
                elevation: 20,
                child: Material(
                  child: Container(
                    height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.add_a_photo,
                              size: 50,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Upload thumbnail')
                        ],
                      ),
                    ),
                    // child: Column(
                    //   children: [
                    //     Expanded(
                    //       child: Image.asset(
                    //         'assets/images/post1.jpg',
                    //         fit: BoxFit.contain,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Write a Caption...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadScreenshot(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      'Upload Screenshots',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
