// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyRadioList {
   final List<MyRadio> radios;
  MyRadioList({
    required this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio>? radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'radios': radios.map((x) => x.toMap()).toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from((map['radios'] as List<int>).map<MyRadio>((x) => MyRadio.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) => MyRadioList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(covariant MyRadioList other) {
    if (identical(this, other)) return true;
  
    return 
      listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final String name;
  final String tag;
  final String color;
  final String desc;
  final String url;
  final String image;
  final String lang;
  final String category;
  final bool disliked;
  final int order;
  MyRadio({
    required this.id,
    required this.name,
    required this.tag,
    required this.color,
    required this.desc,
    required this.url,
    required this.image,
    required this.lang,
    required this.category,
    required this.disliked,
    required this.order,
  });

  MyRadio copyWith({
    int? id,
    String? name,
    String? tag,
    String? color,
    String? desc,
    String? url,
    String? image,
    String? lang,
    String? category,
    bool? disliked,
    int? order,
  }) {
    return MyRadio(
      id: id ?? this.id,
      name: name ?? this.name,
      tag: tag ?? this.tag,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      image: image ?? this.image,
      lang: lang ?? this.lang,
      category: category ?? this.category,
      disliked: disliked ?? this.disliked,
      order: order ?? this.order,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'tag': tag,
      'color': color,
      'desc': desc,
      'url': url,
      'image': image,
      'lang': lang,
      'category': category,
      'disliked': disliked,
      'order': order,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id'] as int,
      name: map['name'] as String,
      tag: map['tag'] as String,
      color: map['color'] as String,
      desc: map['desc'] as String,
      url: map['url'] as String,
      image: map['image'] as String,
      lang: map['lang'] as String,
      category: map['category'] as String,
      disliked: map['disliked'] as bool,
      order: map['order'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyRadio(id: $id, name: $name, tag: $tag, color: $color, desc: $desc, url: $url, image: $image, lang: $lang, category: $category, disliked: $disliked, order: $order)';
  }

  @override
  bool operator ==(covariant MyRadio other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.tag == tag &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.image == image &&
        other.lang == lang &&
        other.category == category &&
        other.disliked == disliked &&
        other.order == order;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        tag.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        image.hashCode ^
        lang.hashCode ^
        category.hashCode ^
        disliked.hashCode ^
        order.hashCode;
  }
}
