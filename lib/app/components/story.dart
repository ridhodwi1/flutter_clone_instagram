import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataUser {
  final String username;
  final String urlimage;
  DataUser(this.username, this.urlimage);
}

List<DataUser> storys = [
  DataUser('user1',
      'https://i.pinimg.com/236x/6f/66/30/6f66309d4fb6946f515ab8a2c55733c5.jpg'),
  DataUser('user2',
      'https://i.pinimg.com/236x/ae/4d/81/ae4d81f2f6e40d9e900044eca474d905.jpg'),
  DataUser('user3',
      'https://i.pinimg.com/236x/5c/db/09/5cdb09c55bceddbe99670372780546ae.jpg'),
  DataUser('user4',
      'https://i.pinimg.com/236x/84/46/c4/8446c44c18ccb026249276017b296f8f.jpg'),
  DataUser('user5',
      'https://i.pinimg.com/236x/84/2d/80/842d80a4e45f32b4a3cc8b3bbbf7d821.jpg'),
  DataUser('user6',
      'https://i.pinimg.com/236x/93/ee/41/93ee41b4975d40ef65bc62ccf6a74eee.jpg'),
  DataUser('user7',
      'https://i.pinimg.com/236x/45/60/1c/45601c08af46c10dc63317f001c56d9f.jpg'),
  DataUser('user8',
      'https://i.pinimg.com/236x/f6/f7/6b/f6f76bbb1e78ec1af7be9756fd8615ba.jpg'),
  DataUser('user9',
      'https://i.pinimg.com/236x/55/b1/65/55b1651e38ed8d21dbf866ee7ad42d2a.jpg'),
  DataUser('user10',
      'https://i.pinimg.com/236x/a4/f4/79/a4f4793ca387e7fe2b74cec830a84499.jpg'),
  DataUser('user11',
      'https://i.pinimg.com/236x/9f/87/7c/9f877c2062221ea223eb7c69d7d1bda5.jpg'),
  DataUser('user12',
      'https://i.pinimg.com/736x/04/70/3c/04703c926028ffb55320d8337f251026.jpg'),
  DataUser('user13',
      'https://i.pinimg.com/236x/a3/92/2c/a3922c432494e8836b1e11e9722c7115.jpg'),
  DataUser('user14',
      'https://i.pinimg.com/236x/bc/91/4f/bc914fda1e88afe3baa8ba7b8c470a11.jpg'),
  DataUser('user15',
      'https://i.pinimg.com/236x/79/e2/c9/79e2c9402014ead1eebf6c9f184c5bf8.jpg'),
  DataUser('user16',
      'https://i.pinimg.com/736x/8b/c4/cd/8bc4cd77722f4c1fb20eb41b2e2b3874.jpg')
];

class Story extends StatefulWidget {
  final String urlimage;
  final String title;
  const Story({super.key, required this.urlimage, required this.title});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6, right: 6),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      widget.urlimage,
                      fit: BoxFit.fill,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/icon-story-ring.svg',
                width: 74,
              ),
            ],
          ),
        ),
        SizedBox(height: 16, child: Text(widget.title))
      ],
    );
  }
}
