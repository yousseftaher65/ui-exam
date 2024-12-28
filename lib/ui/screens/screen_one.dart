import 'package:exam_pojo/ui/theme/app_one/my_app_theme.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const String tag = 'screen_one';
  ScreenOne({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(recommended[0]),
                const SizedBox(
                  width: 16,
                ),
                Image.asset(recommended[1]),
              ],
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
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              color: AppOneColors.secondaryColor,
              AssetImage('assets/icons/homeIcon.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/searchIcon.png'),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/documentIcon.png'),
            ),
            label: 'Library',
          ),
        ],
      ),
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
  ];
}
