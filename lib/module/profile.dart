import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:picture_group/module/profile/photos.dart';
import 'package:picture_group/shared/theme/colors.dart';
import 'package:picture_group/shared/widgets/card/round_faded_container.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        iconTheme: const IconThemeData(color: AppColor.primaryColor),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.menu,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        '${(kDebugMode && kIsWeb) ? '' : "assets"}/images/profile.jpg',
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Musa Jibril',
                          style: TextStyle(
                            fontSize: 33,
                            fontFamily: 'CormorantGaramond',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'User',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        RoundFadedContainer(
                          color: Colors.blue,
                          child: Icon(
                            Ionicons.bookmark_outline,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        RoundFadedContainer(
                          color: Colors.green,
                          child: Icon(
                            Ionicons.image,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.primaryColor,
                    ),
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: AppColor.primaryColor,
                    labelStyle: const TextStyle(
                      fontFamily: 'CormorantGaramond',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    tabs: const [
                      Tab(
                        child: Text(
                          'Photos',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Group',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Photos(),
                  Center(
                    child: Text('Collection'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
