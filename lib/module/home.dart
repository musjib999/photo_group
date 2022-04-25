import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:picture_group/shared/theme/colors.dart';
import 'package:picture_group/shared/widgets/card/category_card.dart';

import '../shared/global/global_var.dart';
import '../shared/widgets/card/category_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> categories = [
    {
      'image':
          'https://files.worldwildlife.org/wwfcmsprod/images/Tiger_resting_Bandhavgarh_National_Park_India/hero_full/77ic6i4qdj_Medium_WW226365.jpg',
      'title': 'Animal',
    },
    {
      'image':
          'https://static.scientificamerican.com/sciam/cache/file/7A715AD8-449D-4B5A-ABA2C5D92D9B5A21_source.png?w=590&h=800&756A88D1-C0EA-4C21-92BE0BB43C14B265',
      'title': 'Bird'
    },
    {
      'image':
          'https://images.everydayhealth.com/images/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg?w=768',
      'title': 'Fruit',
    },
    {
      'image': 'https://wallpapercave.com/wp/wp2048442.jpg',
      'title': 'Person',
    },
    {
      'image': 'https://wallpapercave.com/wp/wp7139747.jpg',
      'title': 'Rose',
    },
    {
      'image': 'https://wallpapercave.com/uwp/uwp1024001.jpeg',
      'title': 'Cartoon',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Photo Group',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'For Photo Exhibition',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.notifications_outline,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Categories',
                          style: TextStyle(
                            fontFamily: 'CormorantGaramond',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return CategoryCard(
                                image: categories[index]['image'],
                                title: categories[index]['title'],
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Photos',
                          style: TextStyle(
                            fontFamily: 'CormorantGaramond',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: photos.length,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2 * 0.8,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                height: 280,
                                width: double.infinity,
                                child: Image.network(
                                  photos[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Photo'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
