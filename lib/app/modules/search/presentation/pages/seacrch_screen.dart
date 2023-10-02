import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/material.dart';

List<String> search = [
  'https://i.pinimg.com/236x/5c/da/af/5cdaaf1db1828c44c9086d0bab516cfc.jpg',
  'https://i.pinimg.com/236x/ac/09/92/ac0992bc568cd7fa1859cf710ffb3eae.jpg',
  'https://i.pinimg.com/236x/86/19/b6/8619b6944989d20239e4847ccabbf0a6.jpg',
  'https://i.pinimg.com/236x/81/c8/dc/81c8dc573d106d75a1c5db5c553a29d7.jpg',
  'https://i.pinimg.com/236x/2c/2f/df/2c2fdff3a5a438de0f51f3e9173999cb.jpg'
];

class SearchScreen extends StatefulWidget {
  final String? urlsearch;
  const SearchScreen({super.key, this.urlsearch});

  @override
  State<SearchScreen> createState() => _SearchState();
}

class _SearchState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'cari')),
        ),
        body: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 2),
              QuiltedGridTile(1, 1),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: search.length,
            (context, index) => Container(
                color: Colors.amberAccent,
                child: Image.network(
                  search[index],
                  fit: BoxFit.cover,
                )),
          ),
        ));
  }
}
