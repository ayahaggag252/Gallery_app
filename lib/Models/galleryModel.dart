class galleryModel {

  String? posterPath;

galleryModel({
this.posterPath,
});
  galleryModel.fromJson(Map<String, dynamic> json) {
    posterPath = json['images'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adult'] = posterPath;
    return data;

  }
}