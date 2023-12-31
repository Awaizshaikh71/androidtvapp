class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;
  final String description;
  final String publishedAt;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
    required this.description,
    required this.publishedAt,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['id']['videoId'],
      title: snippet['snippet']['title'],
      thumbnailUrl: snippet['snippet']['thumbnails']['high']['url'],
      channelTitle: snippet['snippet']['channelTitle'],
      description: snippet['snippet']['description'],
      publishedAt: snippet['snippet']['publishTime'],
    );
  }
}
