import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class NewTopicScreen extends StatelessWidget {
  const NewTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        // centerTitle: true,
        title: const Text(
          'Post New',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),

      // appBar: AppBar(title: const Text('New Topic')),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),

        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(18),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  'Subject',

                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Color(0xFF991B1B),
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                ),

                const SizedBox(height: 22),

                const Text(
                  'Message',

                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Color(0xFF991B1B),
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  maxLines: 10,

                  decoration: InputDecoration(
                    hintText: 'Write your message...',
                    hintStyle: TextStyle(color: Colors.grey.shade400),

                    alignLabelWithHint: true,
                  ),
                ),

                const SizedBox(height: 28),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton.icon(
                    onPressed: () {},

                    icon: const Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: 18,
                    ),

                    label: const Text(
                      'Post Topic',

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      elevation: 0,

                      backgroundColor: const Color(0xFF991B1B),

                      surfaceTintColor: Colors.transparent,

                      padding: const EdgeInsets.symmetric(vertical: 18),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),

                      side: const BorderSide(color: Color(0xFFE5E7EB)),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    child: const Text(
                      'Cancel',

                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
