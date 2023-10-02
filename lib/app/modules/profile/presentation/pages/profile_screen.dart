import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Container(
              child: const Row(
                children: [
                  Text(
                    'Username',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.expand_more,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/plus-add.svg'),
          ),
          IconButton(
            onPressed: () {
              mymenu(context);
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            'assets/images/testing.jpg',
                                            fit: BoxFit.fill,
                                            width: 200,
                                            height: 200,
                                          ),
                                        )),
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/icon-story-ring.svg',
                                    width: 74,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [Text('4'), Text('Postingan')],
                              ),
                              Column(
                                children: [Text('1000'), Text('Pengikut')],
                              ),
                              Column(
                                children: [Text('2'), Text('Mengikuti')],
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Username'),
                            Text('Comentor'),
                            Text('data'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 220,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                                onPressed: () {},
                                child: const Text('Edit Profile')),
                          ),
                          SizedBox(
                            width: 220,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                                onPressed: () {},
                                child: const Text('Bagikan Profile')),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.white,
                      child: TabBar(tabs: [
                        Tab(
                          icon: SvgPicture.asset(
                            'assets/icons/icon-posting-profile.svg',
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            'assets/icons/icon-hastag-profile.svg',
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              )
            ];
          },
          body: TabBarView(children: [
            Center(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: 20,
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
            ),
            Center(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: 20,
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
          ]),
        ),
      ),
    );
  }

  Future<dynamic> mymenu(BuildContext context) {
    return showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const Column(
          children: [
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 25,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
          ],
        );
      },
    );
  }
}
