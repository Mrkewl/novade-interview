import 'dart:convert';

class Novade {
  Novade({
    required this.sectionOneHeader,
    required this.sectionOneBackgroundImage,
    required this.sectionOneDescription,
    required this.sectionTwoBackgroundImage,
    required this.sectionTwoHeader,
    required this.sectionTwoImageFeature,
    required this.sectionThreeHeader,
    required this.sectionThreeSubHeaderOne,
    required this.sectionThreeImageFeatureOne,
    required this.sectionThreeDescription,
    required this.sectionThreeSubHeaderTwo,
    required this.sectionThreeImageFeatureTwo,
  });
  String sectionOneHeader;
  String sectionOneBackgroundImage;
  String sectionOneDescription;
  String sectionTwoBackgroundImage;
  String sectionTwoHeader;
  String sectionTwoImageFeature;
  String sectionThreeHeader;
  String sectionThreeSubHeaderOne;
  String sectionThreeImageFeatureOne;
  String sectionThreeDescription;
  String sectionThreeSubHeaderTwo;
  String sectionThreeImageFeatureTwo;

  Novade copyWith({
    String? sectionOneHeader,
    String? sectionOneBackgroundImage,
    String? sectionOneDescription,
    String? sectionTwoBackgroundImage,
    String? sectionTwoHeader,
    String? sectionTwoImageFeature,
    String? sectionThreeHeader,
    String? sectionThreeSubHeaderOne,
    String? sectionThreeImageFeatureOne,
    String? sectionThreeDescription,
    String? sectionThreeSubHeaderTwo,
    String? sectionThreeImageFeatureTwo,
  }) {
    return Novade(
      sectionOneHeader: sectionOneHeader ?? this.sectionOneHeader,
      sectionOneBackgroundImage:
          sectionOneBackgroundImage ?? this.sectionOneBackgroundImage,
      sectionOneDescription:
          sectionOneDescription ?? this.sectionOneDescription,
      sectionTwoBackgroundImage:
          sectionTwoBackgroundImage ?? this.sectionTwoBackgroundImage,
      sectionTwoHeader: sectionTwoHeader ?? this.sectionTwoHeader,
      sectionTwoImageFeature:
          sectionTwoImageFeature ?? this.sectionTwoImageFeature,
      sectionThreeHeader: sectionThreeHeader ?? this.sectionThreeHeader,
      sectionThreeSubHeaderOne:
          sectionThreeSubHeaderOne ?? this.sectionThreeSubHeaderOne,
      sectionThreeImageFeatureOne:
          sectionThreeImageFeatureOne ?? this.sectionThreeImageFeatureOne,
      sectionThreeDescription:
          sectionThreeDescription ?? this.sectionThreeDescription,
      sectionThreeSubHeaderTwo:
          sectionThreeSubHeaderTwo ?? this.sectionThreeSubHeaderTwo,
      sectionThreeImageFeatureTwo:
          sectionThreeImageFeatureTwo ?? this.sectionThreeImageFeatureTwo,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'sectionOneHeader': sectionOneHeader});
    result.addAll({'sectionOneBackgroundImage': sectionOneBackgroundImage});
    result.addAll({'sectionOneDescription': sectionOneDescription});
    result.addAll({'sectionTwoBackgroundImage': sectionTwoBackgroundImage});
    result.addAll({'sectionTwoHeader': sectionTwoHeader});
    result.addAll({'sectionTwoImageFeature': sectionTwoImageFeature});
    result.addAll({'sectionThreeHeader': sectionThreeHeader});
    result.addAll({'sectionThreeSubHeaderOne': sectionThreeSubHeaderOne});
    result.addAll({'sectionThreeImageFeatureOne': sectionThreeImageFeatureOne});
    result.addAll({'sectionThreeDescription': sectionThreeDescription});
    result.addAll({'sectionThreeSubHeaderTwo': sectionThreeSubHeaderTwo});
    result.addAll({'sectionThreeImageFeatureTwo': sectionThreeImageFeatureTwo});

    return result;
  }

  factory Novade.fromMap(Map<String, dynamic> map) {
    return Novade(
      sectionOneHeader: map['sectionOneHeader'] ?? '',
      sectionOneBackgroundImage: map['sectionOneBackgroundImage'] ?? '',
      sectionOneDescription: map['sectionOneDescription'] ?? '',
      sectionTwoBackgroundImage: map['sectionTwoBackgroundImage'] ?? '',
      sectionTwoHeader: map['sectionTwoHeader'] ?? '',
      sectionTwoImageFeature: map['sectionTwoImageFeature'] ?? '',
      sectionThreeHeader: map['sectionThreeHeader'] ?? '',
      sectionThreeSubHeaderOne: map['sectionThreeSubHeaderOne'] ?? '',
      sectionThreeImageFeatureOne: map['sectionThreeImageFeatureOne'] ?? '',
      sectionThreeDescription: map['sectionThreeDescription'] ?? '',
      sectionThreeSubHeaderTwo: map['sectionThreeSubHeaderTwo'] ?? '',
      sectionThreeImageFeatureTwo: map['sectionThreeImageFeatureTwo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Novade.fromJson(String source) => Novade.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Novade(sectionOneHeader: $sectionOneHeader, sectionOneBackgroundImage: $sectionOneBackgroundImage, sectionOneDescription: $sectionOneDescription, sectionTwoBackgroundImage: $sectionTwoBackgroundImage, sectionTwoHeader: $sectionTwoHeader, sectionTwoImageFeature: $sectionTwoImageFeature, sectionThreeHeader: $sectionThreeHeader, sectionThreeSubHeaderOne: $sectionThreeSubHeaderOne, sectionThreeImageFeatureOne: $sectionThreeImageFeatureOne, sectionThreeDescription: $sectionThreeDescription, sectionThreeSubHeaderTwo: $sectionThreeSubHeaderTwo, sectionThreeImageFeatureTwo: $sectionThreeImageFeatureTwo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Novade &&
        other.sectionOneHeader == sectionOneHeader &&
        other.sectionOneBackgroundImage == sectionOneBackgroundImage &&
        other.sectionOneDescription == sectionOneDescription &&
        other.sectionTwoBackgroundImage == sectionTwoBackgroundImage &&
        other.sectionTwoHeader == sectionTwoHeader &&
        other.sectionTwoImageFeature == sectionTwoImageFeature &&
        other.sectionThreeHeader == sectionThreeHeader &&
        other.sectionThreeSubHeaderOne == sectionThreeSubHeaderOne &&
        other.sectionThreeImageFeatureOne == sectionThreeImageFeatureOne &&
        other.sectionThreeDescription == sectionThreeDescription &&
        other.sectionThreeSubHeaderTwo == sectionThreeSubHeaderTwo &&
        other.sectionThreeImageFeatureTwo == sectionThreeImageFeatureTwo;
  }

  @override
  int get hashCode {
    return sectionOneHeader.hashCode ^
        sectionOneBackgroundImage.hashCode ^
        sectionOneDescription.hashCode ^
        sectionTwoBackgroundImage.hashCode ^
        sectionTwoHeader.hashCode ^
        sectionTwoImageFeature.hashCode ^
        sectionThreeHeader.hashCode ^
        sectionThreeSubHeaderOne.hashCode ^
        sectionThreeImageFeatureOne.hashCode ^
        sectionThreeDescription.hashCode ^
        sectionThreeSubHeaderTwo.hashCode ^
        sectionThreeImageFeatureTwo.hashCode;
  }
}
