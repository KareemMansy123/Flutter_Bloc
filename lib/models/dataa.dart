class Dataa {
  Dataa({
      required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl,});

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['albumId'] = albumId;
    map['id'] = id;
    map['title'] = title;
    map['url'] = url;
    map['thumbnailUrl'] = thumbnailUrl;
    return map;
  }

}