import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/forum_post.dart';
import 'reply_bottom.dart';

class ForumPostCard extends StatefulWidget {
  final ForumPost post;
  final VoidCallback onTap;

  const ForumPostCard({super.key, required this.post, required this.onTap});

  @override
  State<ForumPostCard> createState() => _ForumPostCardState();
}

class _ForumPostCardState extends State<ForumPostCard> {
  bool isExpanded = false;

  final String postContent =
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. '
      'This is a long testing content for checking read more functionality in forum feed UI. ';

  @override
  Widget build(BuildContext context) {
    final bool showReadMore = postContent.length > 180;
    Padding(padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18));

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: InkWell(
        onTap: widget.onTap,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColors.lightRed,

                    child: const Icon(
                      Icons.person,
                      color: AppColors.primary,
                      size: 22,
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          widget.post.topic,

                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                            height: 1.3,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          widget.post.name,

                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,

                          style: const TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),

                        const SizedBox(height: 2),

                        Text(
                          widget.post.lastPostDate,

                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Text(
                postContent,

                maxLines: isExpanded ? null : 5,

                overflow: isExpanded
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,

                style: const TextStyle(
                  fontSize: 14.5,
                  height: 1.7,
                  letterSpacing: 0.2,
                  color: AppColors.textSecondary,
                ),
              ),

              if (showReadMore) ...[
                const SizedBox(height: 12),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },

                  child: Text(
                    isExpanded ? 'Read less' : 'Read more',

                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],

              const SizedBox(height: 18),

              Divider(color: Colors.grey.shade200, height: 1),

              InkWell(
                onTap: () {
                  showReplyBottomSheet(context);
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      const Icon(
                        Icons.chat_bubble_outline_rounded,
                        size: 20,
                        color: AppColors.textSecondary,
                      ),

                      const SizedBox(width: 8),

                      Text(
                        '${widget.post.postCount} Replies',

                        style: const TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
