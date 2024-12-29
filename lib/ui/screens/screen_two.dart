import 'package:exam_pojo/ui/theme/app_two/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenTwo extends StatefulWidget {
  static const String tag = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final controller = PageController();
  // final CarouselController carouselController = CarouselController();
  //final CarouselSliderController carouselController = CarouselSliderController();
  int _current = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Positive vibes',
                    style: AppTwoTextStyle.more.copyWith(
                      color: Color(0xff344054),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Boost your mood with\npositive vibes',
                      style: AppTwoTextStyle.category),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/btnIcon.png'),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '10 mins',
                        style: AppTwoTextStyle.body
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Image.asset('assets/images/dogImage.png'),
            ],
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: AppTwoColors.whiteColor,
      appBar: AppBar(
        title: Image.asset('assets/logos/logo2.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/notiIcon.png',
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'Hello, ',
                  style: AppTwoTextStyle.title,
                ),
                TextSpan(
                  text: 'Sara Rose,',
                  style: AppTwoTextStyle.title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'How are you feeling today ?',
              style: AppTwoTextStyle.title.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/logos/one.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Love',
                      style: AppTwoTextStyle.body,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/logos/two.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Cool',
                      style: AppTwoTextStyle.body,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/logos/three.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Happy',
                      style: AppTwoTextStyle.body,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/logos/four.png'),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Sad',
                      style: AppTwoTextStyle.body,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Feature',
                  style: AppTwoTextStyle.title
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: AppTwoTextStyle.more,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: AppTwoColors.secondaryColor,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
                    Expanded(
                      child: PageView.builder(
                        controller: controller,
                        itemBuilder: (context,index){
                        return Column(
                          children: [
                            pages[_current % pages.length],
                            const SizedBox(height: 28),
                            SmoothPageIndicator(
                              controller: controller,
                              count: pages.length,
                              effect: const WormEffect(
                                dotHeight: 6,
                                dotWidth: 6,
                                dotColor: Color(0xffD9D9D9),
                                activeDotColor: Color(0xff98A2B3),
                                type: WormType.thinUnderground,
                              ),
                              onDotClicked: (index) {
                                 setState(() {
                                  _current = index; 
                                 controller
                                    .jumpToPage(
                                    index ); 
                                });
                                 
                              },
                            ),
                          ],
                        );},
                      ),
                    ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Exercise',
                  style: AppTwoTextStyle.title
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: AppTwoTextStyle.more,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: AppTwoColors.secondaryColor,
                )
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Image.asset('assets/icons/relaxIcon.png'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Relaxation',
                          style: AppTwoTextStyle.body
                              .copyWith(fontWeight: FontWeight.w500),
                        )
                      ]),
                      SizedBox(
                        height: 32,
                      ),
                      Row(children: [
                        Image.asset('assets/icons/breathIcon.png'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Breathing',
                          style: AppTwoTextStyle.body
                              .copyWith(fontWeight: FontWeight.w500),
                        )
                      ])
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Image.asset('assets/icons/medIcon.png'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Meditation',
                          style: AppTwoTextStyle.body
                              .copyWith(fontWeight: FontWeight.w500),
                        )
                      ]),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/yogaIcon.png'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Yoga',
                            style: AppTwoTextStyle.body
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ],
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
        unselectedItemColor: Color(0xff667085),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildItem(index: 0, icon: 'homeIcon2', label: ''),
          _buildItem(index: 1, icon: 'gridIcon', label: ''),
          _buildItem(index: 2, icon: 'calIocn', label: ''),
          _buildItem(index: 3, icon: 'userIcon', label: ''),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(
      {required int index, required String icon, required String label}) {
    return _currentIndex == index
        ? BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(
                  AssetImage('assets/icons/$icon.png'),
                  color: AppTwoColors.secondaryColor,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTwoColors.secondaryColor),
                )
              ],
            ),
            label: '',
          )
        : BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/$icon.png'),
            ),
            label: '');
  }
}
