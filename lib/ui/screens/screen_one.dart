import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_pojo/ui/theme/app_one/my_app_theme.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  static const String tag = 'screen_one';
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int currentIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppOneColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppOneColors.whiteColor,
        title: Image.asset('assets/logos/Logo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              color: AppOneColors.secondaryColor,
              AssetImage('assets/icons/settingIcon.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: AppOneTextStyle.titel,
                  ),
                  Text(
                    'See More',
                    style: AppOneTextStyle.more,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SizedBox(
                height: 30,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 24,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Text(
                        categories[index],
                        style: AppOneTextStyle.category,
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: AppOneTextStyle.titel,
                  ),
                  Text(
                    'See More',
                    style: AppOneTextStyle.more,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CarouselSlider(
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                viewportFraction: 0.63,
                enlargeCenterPage: false,
                //enlargeFactor: 0.09,
                 aspectRatio: 1.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) => setState(() => this.index = index),
              ),
              items: recommended.map((i) {
                return Builder(
                  builder: (
                    context,
                  ) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best seller',
                    style: AppOneTextStyle.titel,
                  ),
                  Text(
                    'See More',
                    style: AppOneTextStyle.more,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    recommended[2],
                    height: 300,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Light Mage',
                        style: AppOneTextStyle.titel,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Laurie Forest',
                        style: AppOneTextStyle.body,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: AppOneTextStyle.body.copyWith(
          fontSize: 10,
        ),
        selectedLabelStyle: AppOneTextStyle.body.copyWith(
          color: AppOneColors.secondaryColor,
          fontSize: 10,
        ),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildNavItem( 'home', 0,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem( 'search', 1,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem( 'document', 2,),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String imageName, int index) {
    return currentIndex == index
        ?  ImageIcon(
              size: 30,
              AssetImage('assets/icons/${imageName}Icon.png'),
            )
        : ImageIcon(
            size: 30,
            AssetImage('assets/icons/${imageName}Icon.png'),
          );
  }

  final List<String> categories = [
    'Art',
    'Business',
    'Entertainment',
    'Comedy',
    'Drama',
    'Science',
    'Sports',
    'Technology',
  ];

  final List<String> recommended = [
    'assets/images/imageOne.png',
    'assets/images/imageTwo.png',
    'assets/images/imageThree.png',
    'assets/images/imageFour.png',
    'assets/images/imageFive.png',
  ];
}
