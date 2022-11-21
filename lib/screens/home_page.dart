import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_fitness/widgets/search_widget.dart';

import '../constants/hl_constants.dart';
import '../widgets/circle_avater_widget.dart';
import '../widgets/category_card_widget.dart';
import '../widgets/navigation_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(menuIcon),
        title: const Text(
          'Hello, Adam Smith',
          style: TextStyle(fontFamily: 'Inter'),
        ),
        actions: const [CircleAvaterWidget(), SizedBox(width: paddingDft)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDft),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: paddingDft),
              const Text(
                'Find Your',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: paddingDft * 1.5,
                ),
              ),
              const Text(
                'Workout Class',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: paddingDft * 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // ===== Search Bar Widget=====
              const SearchWidget(),

              // ===== Today's Activity Start =====
              const SizedBox(height: paddingDft),
              Container(
                padding: const EdgeInsets.all(paddingDft),
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Today's\nactivity",
                          style: GoogleFonts.nunito(
                            textStyle: textTheme.headline4,
                          ),
                        ),
                        const SizedBox(height: paddingDft),
                        Text(
                          "8:00 AM - 1:30 PM",
                          style: textTheme.subtitle1,
                        ),
                        const SizedBox(height: paddingDft)
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset(legImg),
                    )
                  ],
                ),
              ),
              // ===== Today's Activity End =====
              const SizedBox(height: paddingDft),
              // ====== Recommandation Start =====
              //----- Recomandation Title -----
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommandation Class',
                    style: textTheme.headline5,
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(
                      color: kDeepBlue,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: paddingDft * .4),
              //----- Recomandation Card -----
              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  tileColor: kRecCardBgc,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  leading: Image.asset(recomandImg),
                  title: Text(
                    'Yoga Class',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: const Text(
                    'With Racheal Wisdom',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: hlBgc,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    child: const Icon(
                      Icons.favorite_outline,
                      color: kDeepBlue,
                    ),
                  ),
                ),
              ),
              // ====== Recommandation End =====
              const SizedBox(height: paddingDft),
              // ====== Category Start =====
              //----- Category Title -----
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: textTheme.headline5,
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(
                      color: kDeepBlue,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: paddingDft * .5),
              //----- Scrollable Category Cards -----
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                      title: 'Warm up',
                      bgColor: kLightBlue,
                      bgImg: warmUpImg,
                    ),
                    CategoryCardWidget(
                      title: 'Yoga',
                      bgColor: kWhite,
                      bgImg: yogaImg,
                    ),
                    CategoryCardWidget(
                      title: 'Squart',
                      bgImg: warmUpImg,
                      bgColor: kLightRed,
                    ),
                    CategoryCardWidget(
                      title: 'Lunge',
                      bgColor: kDeepBlue,
                      bgImg: lungeImg,
                    ),
                  ],
                ),
              ),
              // ====== Category End =====
            ],
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
