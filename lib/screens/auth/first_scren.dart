import 'package:flutter/material.dart';
import 'package:quiz/screens/auth/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  final int _numPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              splashScreen(
                'assets/images/11.jpg',
                'Tezkor Ilova',
                'Ilova siz o`ylagandek tezkor va ixcham',
              ),
              splashScreen('assets/images/7.jpg', 'Qiziqarli savollar',
                  'Ilovada siz kutgan qiziqarli savollar mavjud'),
              splashScreen(
                'assets/images/8.jpg',
                'IQ level',
                'Savollar sizning IQ darajngizga tasir qiladi',
              ),
            ],
          ),
          currentIndex == _numPage
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SecondPage();
                          },
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              : const Text(''),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: builPgeIndicator()),
          ),
        ],
      ),
    );
  }

  List<Widget> builPgeIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 20.0 : 15.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : const Color(0xFF7B51D3),
          borderRadius: BorderRadius.circular(12.0)),
    );
  }

  Widget indexX(int index, int currentndex) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: index == currentndex ? 20.0 : 15.0,
      height: 10.0,
      decoration: BoxDecoration(
        color: index == currentndex ? Colors.white : const Color(0xFF7B51D3),
        shape: BoxShape.circle,
      ),
      duration: const Duration(microseconds: 150),
    );
  }

  Widget splashScreen(
    String img,
    String title,
    String subtitle,
  ) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ],
          stops: [
            0.1,
            0.4,
            0.7,
            0.9,
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              width: 350.0,
              height: 350.0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    img,
                  )),
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15.0),
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
