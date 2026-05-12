import 'package:flutter/material.dart';

import 'comment_item.dart';

void showReplyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,

    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),

    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.72,
        minChildSize: 0.45,
        maxChildSize: 0.95,
        expand: false,

        builder: (context, scrollController) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 10),

                height: 4,
                width: 42,

                decoration: BoxDecoration(
                  color: Colors.grey.shade300,

                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 6,
                ),

                child: Row(
                  children: [
                    const Text(
                      'Replies',

                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFF111827),
                      ),
                    ),

                    const Spacer(),

                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F4F6),

                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        icon: const Icon(Icons.close, size: 18),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(height: 1, color: Colors.grey.shade200),

              Expanded(
                child: ListView(
                  controller: scrollController,

                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),

                  children: const [
                    ExpandableCommentItem(
                      name: 'Balachander (1171)',

                      time: '2h ago',

                      comment:
                          'Great initiative! Looking forward to the festival. How can we volunteer for the event? Great initiative! Looking forward to the festival. How can we volunteer for the event? Great initiative! Looking forward to the festival. How can we volunteer for the event? Great initiative! Looking forward to the festival. How can we volunteer for the event? Great initiative! Looking forward to the festival. How can we volunteer for the event? Great initiative! Looking forward to the festival. How can we volunteer for the event?',

                      avatar:
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=100',
                    ),

                    SizedBox(height: 22),

                    ExpandableCommentItem(
                      name: 'Vanaja Varma (1031)',

                      time: '5h ago',

                      comment:
                          'The minutes are very clear. Glad to see the 2010 batch leading this.',

                      avatar:
                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=100',
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(
                  left: 14,
                  right: 14,
                  top: 12,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 12,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,

                  border: Border(top: BorderSide(color: Colors.grey.shade200)),
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    const CircleAvatar(
                      radius: 18,

                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?auto=format&fit=crop&q=80&w=100',
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),

                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F4F6),
                          borderRadius: BorderRadius.circular(26),
                        ),

                        child: TextField(
                          // minLines: 1,
                          // maxLines: 5,
                          cursorColor: const Color(0xFF991B1B),

                          decoration: InputDecoration(
                            hintText: 'Add a reply...',

                            hintStyle: const TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 14,
                            ),

                            filled: true,
                            fillColor: const Color(0xFFF3F4F6),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    InkWell(
                      borderRadius: BorderRadius.circular(50),

                      onTap: () {
                        Navigator.pop(context);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Reply posted successfully!'),
                          ),
                        );
                      },

                      child: Container(
                        padding: const EdgeInsets.all(12),

                        decoration: const BoxDecoration(
                          color: Color(0xFF991B1B),
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
