import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: 20,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              Color bacground = index % 2 == 0 ? Colors.amber : Colors.blue;
              return Container(
                  decoration: BoxDecoration(
                      color: bacground,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/63/44/59/63445944e94343c438dde29bed0c2c01.jpg',
                          ))),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              width: 55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.white,
                                      )),
                                  Text(
                                    '47,2rb', // Ganti teks sesuai keinginan Anda.
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      )),
                                  Text(
                                    '47,2rb', // Ganti teks sesuai keinginan Anda.
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/icons/icon-share.svg',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '47,2rb', // Ganti teks sesuai keinginan Anda.
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[300]!,
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                )
                                              ]),
                                          child: CircleAvatar(
                                            radius: 32,
                                            backgroundColor: Colors.grey[200],
                                            child: const Icon(
                                              Icons.person,
                                              size: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/icon-story-ring.svg',
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text('Username',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {}, child: Text('Follow'))
                                ],
                              ),
                              Text('assalamualaikum ya akhi',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      Container()
                    ],
                  ));
            },
          ),
          if (currentIndex == 0)
            const Positioned(
              left: 16,
              top: 16,
              child: Text(
                'Reels',
                style: TextStyle(fontSize: 20),
              ),
            ),
          Positioned(
            right: 16,
            top: 9,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera_outlined),
            ),
          ),
        ],
      )),
    );
  }
}
