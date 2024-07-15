class ScopeModel {
  final int id;
  final String name;
  final String type;
  final String frequency;
  final Map<String, List<List<String>>> data;
  final String pdfUrl;
  final int proposal;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int userId;
  final String proposalCustomer; // Added field
  final String? pdfUrl2; // Nullable field


  ScopeModel({
    required this.id,
    required this.name,
    required this.type,
    required this.frequency,
    required this.data,
    required this.pdfUrl,
    required this.proposal,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.proposalCustomer, // Initialize in constructor
    this.pdfUrl2,

  });

  factory ScopeModel.fromJson(Map<String, dynamic> json) {
    return ScopeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      frequency: json['frequency'] as String,
      data: (json['data'] as Map<String, dynamic>).map<String, List<List<String>>>((key, value) {
        return MapEntry(key, (value as List<dynamic>).map<List<String>>((item) => List<String>.from(item)).toList());
      }),
      pdfUrl: json['pdf_url'] as String,
      proposal: json['proposal'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as int,
      proposalCustomer: json['proposal_model']['customer'] as String, // Extract customer name
      pdfUrl2: json['pdf_url2'] as String?,
    );
  }
}
