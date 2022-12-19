class ShifftsOfferts {
  int? id;
  String? status;
  String? startAt;
  String? endAt;
  String? postName;
  int? postId;
  bool? startSoon;
  String? company;
  String? buyPrice;
  int? bonus;
  double? latitude;
  double? longitude;

  ShifftsOfferts({
    this.id = 0,
    this.status = "",
    this.startAt = "",
    this.startSoon = true,
    this.postId = 0,
    this.postName = "",
    this.endAt = "",
    this.company = "",
    this.latitude = 0,
    this.longitude = 0,
    this.bonus = 0,
    this.buyPrice = "",
  });

  factory ShifftsOfferts.fromJson(Map<String, dynamic> json) {
    return ShifftsOfferts(
        id: json['id'],
        status: json['status'],
        endAt: json['end_at'],
        startAt: json['start_at'],
        postName: json['post_name'],
        postId: json['post_id'],
        startSoon: json['start_soon'],
        company: json['company'],
        buyPrice: json['buy_price'],
        bonus: json['bonus'],
        latitude: json['latitude'],
        longitude: json['longitude']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['start_at'] = startAt;
    data['end_at'] = endAt;
    data['post_name'] = postName;
    data['post_id'] = postId;
    data['start_soon'] = startSoon;
    data['company'] = company;
    data['buy_price'] = buyPrice;
    data['bonus'] = bonus;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
