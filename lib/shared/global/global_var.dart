import 'package:flutter/material.dart';
import 'package:picture_group/module/home.dart';
import 'package:picture_group/module/profile.dart';

List<String> photos = [
  'https://wallpapercave.com/wp/wp3748670.jpg',
  'https://wallpapercave.com/wp/wp3748672.jpg',
  'https://wallpapercave.com/uwp/uwp2339121.jpeg',
  'https://wallpapercave.com/uwp/uwp2328395.png',
  'https://wallpapercave.com/wp/wp11067772.jpg',
  'https://wallpapercave.com/uwp/uwp2321843.jpeg',
  'https://wallpapercave.com/uwp/uwp2321880.jpeg',
  'https://wallpapercave.com/uwp/uwp2317131.jpeg',
  'https://wallpapercave.com/uwp/uwp2321842.jpeg',
  'https://wallpapercave.com/uwp/uwp2321832.jpeg',
];

List<Widget> pages = [
  const Home(),
  Container(),
  Container(),
  const Profile(),
];
