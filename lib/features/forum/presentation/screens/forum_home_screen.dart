import 'package:flutter/material.dart';
import 'package:forum/core/constants/app_colors.dart';

import '../../data/mock/forum_mock_data.dart';
import '../widgets/forum_post_card.dart';
import 'new_topic_screen.dart';
import 'topic_details_screen.dart';

class ForumHomeScreen extends StatelessWidget {
  const ForumHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        // centerTitle: true,
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

      // appBar: AppBar(
      //   title: const Text(
      //     'Forum',
      //     style: TextStyle(
      //       fontWeight: FontWeight.w700,
      //       fontSize: 20,
      //       color: Colors.white,
      //     ),
      //     // selectionColor: Colors.white,
      //   ),

      //   backgroundColor: AppColors.primary,
      //   foregroundColor: Colors.white,
      // ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: mockPosts.length,
        itemBuilder: (context, index) {
          final post = mockPosts[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ForumPostCard(
              post: post,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TopicDetailsScreen(post: post),
                ),
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 1,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const NewTopicScreen()),
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 26),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: 0,

        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey.shade400,

        selectedFontSize: 12,
        unselectedFontSize: 12,

        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),

        showUnselectedLabels: true,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
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
