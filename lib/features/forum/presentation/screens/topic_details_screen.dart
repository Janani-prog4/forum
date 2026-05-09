import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

import '../../domain/entities/forum_post.dart';
import '../widgets/reply_bottom.dart';

class TopicDetailsScreen extends StatelessWidget {
  final ForumPost post;

  const TopicDetailsScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        // centerTitle: true,
        title: Text(
          (post.topic),
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),

      // appBar: AppBar(title: Text(post.topic)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),

        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(18),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(post.authorImage),
                    ),

                    const SizedBox(width: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          post.name,

                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xFF111827),
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          '${post.authorBatch} • ${post.lastPostDate}',

                          style: const TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Text(
                  post.topic,

                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 18),

                const Text(
                  'Minutes of the First Meeting.\n\n'
                  'PRAJNA FESTIVAL 2.0\n'
                  'ZOOM MEETING ON 27.4.25@1830.\n\n'
                  'Members Present:\n\n'
                  '1. Maj.Gen.NRK.Babu\n'
                  '2. Dr.Bala\n'
                  '3. Col.Bala\n'
                  '4. Mr.Dwarakanath\n'
                  '5. Mr.Murugan',

                  style: TextStyle(
                    fontSize: 15,
                    height: 1.8,
                    letterSpacing: 0.2,
                    color: Color(0xFF374151),
                  ),
                ),

                const SizedBox(height: 24),

                const Divider(),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        showReplyBottomSheet(context);
                      },

                      icon: const Icon(Icons.reply_rounded, size: 18),

                      label: const Text('Reply'),

                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF991B1B),

                        side: const BorderSide(color: Color(0xFF991B1B)),

                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 11,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
