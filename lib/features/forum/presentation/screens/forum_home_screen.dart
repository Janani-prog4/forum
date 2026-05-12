import 'package:flutter/material.dart';
import 'package:forum/core/constants/app_colors.dart';

import '../../data/mock/forum_mock_data.dart';
import '../widgets/forum_post_card.dart';
import 'new_topic_screen.dart';

class ForumHomeScreen extends StatelessWidget {
  const ForumHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),

      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,

        title: const Text(
          'Forum',

          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),

      body: ListView.separated(
        physics: const BouncingScrollPhysics(),

        padding: const EdgeInsets.only(top: 10, bottom: 90),

        itemCount: mockPosts.length,

        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },

        itemBuilder: (context, index) {
          final post = mockPosts[index];

          return ForumPostCard(
            post: post,

            // Feed style → no navigation
            onTap: () {},
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: AppColors.primary,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const NewTopicScreen()),
          );
        },

        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.white,

        currentIndex: 0,

        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,

        selectedFontSize: 12,
        unselectedFontSize: 12,

        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),

        showUnselectedLabels: true,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Members',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            label: 'News',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.image_outlined),
            label: 'Gallery',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}
