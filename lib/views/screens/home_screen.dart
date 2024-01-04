import 'package:flutter/material.dart';
import 'package:artsathi_app/vendor/views/screens/SampleAvatar.dart';
import 'package:artsathi_app/views/screens/widgets/banner_widget.dart';
import 'package:artsathi_app/views/screens/widgets/beauty_widget.dart';
import 'package:artsathi_app/views/screens/widgets/category_text.dart';
import 'package:artsathi_app/views/screens/widgets/customAppBar.dart';
import 'package:artsathi_app/views/screens/widgets/new_products_widget.dart';
import 'package:artsathi_app/views/screens/widgets/men_shoes.dart';
import 'package:artsathi_app/views/screens/widgets/reuseText_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> avatarTitles = [
    'Jewellery making',
    'DIY Crafts',
    'Sewing',
    'Painting',
    'DIY Photo Crafts',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 10,
          ),
          BannerWidget(),
          SizedBox(
            height: 10,
          ),
          CategoryText(),
          Center(
            child: Text(
              "Shop By Art Form | Skill Type",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (int i = 0; i < avatarTitles.length; i++)
                  AvatarCard(
                    assetImage:
                        'assets/images/logo/$i.jpeg', // Make sure to place your images in the assets folder.
                    title: avatarTitles[i],
                  ),
              ],
            ),
          ),
          ResuseTextWidget(
            title: "Traditional Crafts",
          ),
          MenShoes(),
          SizedBox(
            height: 10,
          ),
          ResuseTextWidget(
            title: 'Handmade Products',
          ),
          BeautyWidget(),
        ],
      ),
    ));
  }
}

class AvatarCard extends StatelessWidget {
  final String assetImage;
  final String title;

  AvatarCard({required this.assetImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Adjust the card width as needed
      margin: EdgeInsets.all(5),
      // padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(assetImage),
            radius: 50,
          ),
          SizedBox(height: 8),
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'cursive')),
        ],
      ),
    );
  }
}
