import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class CommentItem extends StatelessWidget {
  final String name;
  final String time;
  final String comment;
  final String avatar;

  const CommentItem({
    super.key,
    required this.name,
    required this.time,
    required this.comment,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 16, backgroundImage: NetworkImage(avatar)),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Text(
                    time,
                    style: const TextStyle(
                      color: AppColors.greyText,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),

              Text(
                comment,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.4,
                  color: AppColors.textSecondary,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  const Text(
                    'Reply',
                    style: TextStyle(
                      color: AppColors.greyText,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Icon(
                    Icons.favorite_border,
                    size: 14,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
