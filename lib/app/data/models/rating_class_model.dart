import 'dart:convert';

class RatingClass {
    RatingClass({
        this.title,
        this.description,
        this.star,
        this.date,
        this.active,
    });

    final String? title;
    final String? description;
    final int? star;
    final DateTime? date;
    final bool? active;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(title != null){
      result.addAll({'title': title});
    }
    if(description != null){
      result.addAll({'description': description});
    }
    if(star != null){
      result.addAll({'star': star});
    }
    if(date != null){
      result.addAll({'date': date!});
    }
    if(active != null){
      result.addAll({'active': active});
    }
  
    return result;
  }

  factory RatingClass.fromMap(Map<String, dynamic> map) {
    return RatingClass(
      title: map['title'],
      description: map['description'],
      star: map['star']?.toInt(),
      date: map['date'] != null ? DateTime.tryParse(map['date']) : null,
      active: map['active'],
    );
  }

}
