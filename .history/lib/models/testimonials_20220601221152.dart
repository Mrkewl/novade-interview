import 'dart:convert';

class Testimonials {
  Testimonials(
    this.name,
    this.profilePictureUrl,
    this.position,
    this.description,
  );
  final String name;
  final String profilePictureUrl;
  final String position;
  final String description;

  Testimonials copyWith({
    String? name,
    String? profilePictureUrl,
    String? position,
    String? description,
  }) {
    return Testimonials(
      name ?? this.name,
      profilePictureUrl ?? this.profilePictureUrl,
      position ?? this.position,
      description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'profilePictureUrl': profilePictureUrl});
    result.addAll({'position': position});
    result.addAll({'description': description});

    return result;
  }

  factory Testimonials.fromMap(Map<String, dynamic> map) {
    return Testimonials(
      map['name'] ?? '',
      map['profilePictureUrl'] ?? '',
      map['position'] ?? '',
      map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Testimonials.fromJson(String source) =>
      Testimonials.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Testimonials(name: $name, profilePictureUrl: $profilePictureUrl, position: $position, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Testimonials &&
        other.name == name &&
        other.profilePictureUrl == profilePictureUrl &&
        other.position == position &&
        other.description == description;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        profilePictureUrl.hashCode ^
        position.hashCode ^
        description.hashCode;
  }
}
