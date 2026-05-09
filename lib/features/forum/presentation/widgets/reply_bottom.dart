import 'package:flutter/material.dart';

import 'comment_item.dart';

void showReplyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,

    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),

    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,

        builder: (context, scrollController) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),

                height: 4,
                width: 40,

                decoration: BoxDecoration(
                  color: Colors.grey.shade300,

                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    const Text(
                      'Replies',

                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xFF111827),
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      icon: const Icon(Icons.close, size: 20),
                    ),
                  ],
                ),
              ),

              const Divider(height: 1),

              Expanded(
                child: ListView(
                  controller: scrollController,

                  padding: const EdgeInsets.all(16),

                  children: const [
                    ExpandableCommentItem(
                      name: 'Balachander (1171)',

                      time: '2h ago',

                      comment:
                          'Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?GreGreat initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?at initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?Great initiative! Looking forward to the festival. How can we volunteer for the event?',

                      avatar:
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=100',
                    ),

                    SizedBox(height: 20),

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
                  left: 16,
                  right: 16,
                  top: 12,

                  bottom: MediaQuery.of(context).viewInsets.bottom + 12,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),

                      offset: const Offset(0, -2),

                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Row(
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

                          borderRadius: BorderRadius.circular(24),
                        ),

                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a reply...',

                            hintStyle: TextStyle(
                              color: Color(0xFF6B7280),
                              fontSize: 14,
                            ),

                            border: InputBorder.none,

                            enabledBorder: InputBorder.none,

                            focusedBorder: InputBorder.none,

                            contentPadding: EdgeInsets.symmetric(vertical: 10),

                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Reply posted successfully!'),
                          ),
                        );
                      },

                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Reply posted successfully!'),
                            ),
                          );
                        },

                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF991B1B),

                          side: const BorderSide(color: Color(0xFF991B1B)),

                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        child: const Text(
                          'Send',
                          style: TextStyle(fontWeight: FontWeight.w700),
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
