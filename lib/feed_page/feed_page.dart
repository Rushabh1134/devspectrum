import 'package:devspectrum/feed_page/documentation.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 20,
        title: const Text('Dev Spectrum'),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              //post one.

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Card(
                  elevation: 20,
                  child: Material(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Project 1',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/post1.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 69,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '300 Likes',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '10 Comments',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DocumentPage(),
                                        ),
                                      );
                                    },
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.article,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            'Documentation',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //post two

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Card(
                  elevation: 20,
                  child: Material(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Project 2',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/post2.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 69,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '300 Likes',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '10 Comments',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DocumentPage(),
                                        ),
                                      );
                                    },
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.article,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            'Documentation',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //post three

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Card(
                  elevation: 20,
                  child: Material(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Project 3',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/post3.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 69,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '300 Likes',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '10 Comments',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DocumentPage(),
                                        ),
                                      );
                                    },
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.article,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            'Documentation',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //post four

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Card(
                  elevation: 20,
                  child: Material(
                    child: Container(
                      height: 350,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Project 4',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/post4.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                              color: Colors.black,
                            ),
                            height: 69,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '300 Likes',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '10 Comments',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DocumentPage(),
                                        ),
                                      );
                                    },
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.article,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            'Documentation',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
