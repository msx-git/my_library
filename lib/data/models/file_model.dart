class FileModel {
  int id;
  final String title;
  final String author;
  final String synopsis;
  final String url;
  final String coverUrl;
  final double rating;
  final double price;
  String savePath;
  double progress;
  bool isLoading;
  bool isDownloaded;

  FileModel({
    required this.id,
    required this.title,
    required this.author,
    required this.synopsis,
    required this.url,
    required this.coverUrl,
    required this.rating,
    required this.price,
    required this.savePath,
    required this.progress,
    required this.isLoading,
    required this.isDownloaded,
  });
}
