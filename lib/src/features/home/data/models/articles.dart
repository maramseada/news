class SourceModel {
  final String id;
  final String name;

  SourceModel({
    required this.id,
    required this.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> jsonData) {
    return SourceModel(
      id: jsonData['id'] ?? '', // Default value of 0 or handle as necessary
      name: jsonData['name'] ?? '',
    );
  }
}