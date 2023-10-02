import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomepageState();
}

class _HomepageState extends State<HomeScreen> {
  int selectitem = 0;

  void selectscreen(index) {
    setState(() {
      selectitem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Instagram',
                  style: GoogleFonts.rochester(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.expand_more,
                size: 25,
                color: Colors.black,
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 28.0,
                  color: Colors.black,
                )),
            IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Icons.svg',
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: storys.length + 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 6, right: 6),
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
                                        child: Icon(
                                          Icons.person,
                                          size: 28.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/icon-story-ring.svg',
                                      width: 74,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-plus-blue.svg',
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 16, child: Text('user')),
                            ],
                          ),
                        );
                      } else {
                        return Container(
                            child: Story(
                                urlimage: storys[index - 1].urlimage,
                                title: storys[index - 1].username));
                      }
                    },
                  ),
                ),
              ),
              myposting('Ridho dwi',
                  'https://i.pinimg.com/236x/79/e2/c9/79e2c9402014ead1eebf6c9f184c5bf8.jpg'),
              myposting('Ridhodwir',
                  'https://i.pinimg.com/236x/45/60/1c/45601c08af46c10dc63317f001c56d9f.jpg')
            ],
          ),
        ));
  }

  Column myposting(String textname, String url) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
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
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Sponsored'),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            )
          ],
        ),
        Image.network(
          url,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/icon-chat-bubble.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/icon-share.svg'),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/icon-save.svg'),
            )
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Like 100',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ExpandableText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor, ligula nec bibendum convallis, augue sapien vulputate urna, in cursus metus quam nec nunc.',
                  expandText:
                      'Read more', // Text shown when the text is collapsed
                  collapseText: 'Read less',
                  prefixText:
                      'username', // Text shown when the text is expanded
                  prefixStyle: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2, // Number of lines to show initially
                  textAlign: TextAlign.justify, // Text alignment
                  style: TextStyle(fontSize: 14.0), // Text style
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
