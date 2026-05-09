import 'package:flutter/material.dart';

class ExpandableCommentItem extends StatefulWidget {
  final String name;
  final String time;
  final String comment;
  final String avatar;

  const ExpandableCommentItem({
    super.key,
    required this.name,
    required this.time,
    required this.comment,
    required this.avatar,
  });

  @override
  State<ExpandableCommentItem> createState() => _ExpandableCommentItemState();
}

class _ExpandableCommentItemState extends State<ExpandableCommentItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final bool shouldShowSeeMore = widget.comment.length > 180;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 16, backgroundImage: NetworkImage(widget.avatar)),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: Color(0xFF111827),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  Text(
                    widget.time,
                    style: const TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),

              Text(
                widget.comment,
                maxLines: isExpanded ? null : 4,
                overflow: isExpanded
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.4,
                  color: Color(0xFF374151),
                ),
              ),

              if (shouldShowSeeMore)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? 'See less' : '...See more',
                      style: const TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
