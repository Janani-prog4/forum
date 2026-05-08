class ForumPost {
  final String id;
  final String topic;
  final String postedBy;
  final String lastPostDate;
  final String authorBatch;
  final String authorImage;

  const ForumPost({
    required this.id,
    required this.topic,
    required this.postedBy,
    required this.lastPostDate,
    this.authorBatch = '2010 Batch',
    this.authorImage =
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?auto=format&fit=crop&q=80&w=100',
  });
}
