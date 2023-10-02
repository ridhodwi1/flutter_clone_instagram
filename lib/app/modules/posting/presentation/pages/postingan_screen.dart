import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class PostinganScreen extends StatefulWidget {
  const PostinganScreen({super.key});

  @override
  State<PostinganScreen> createState() => _PostinganScreenState();
}

class _PostinganScreenState extends State<PostinganScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Postingan',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            onPressed: () => context.go('/home'), icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 300, width: double.infinity, color: Colors.amber),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Terbaru',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.expand_more,
                        size: 25,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.filter)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt_outlined)),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ),
            Center(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/images/testing.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
