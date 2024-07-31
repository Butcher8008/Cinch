import 'dart:convert';

// Define the WorkOrder model
class WorkOrderModel {
  final int id;
  final String type;
  final String status;
  final List<String> customerId;
  final int cleanerId;
  final int userId;
  final String pdfUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String notes;

  WorkOrderModel({
    required this.id,
    required this.type,
    required this.status,
    required this.customerId,
    required this.cleanerId,
    required this.userId,
    required this.pdfUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.notes,
  });

  // Convert JSON map to WorkOrder instance
  factory WorkOrderModel.fromJson(Map<String, dynamic> json) {
    return WorkOrderModel(
      id: json['id'],
      type: json['type'],
      status: json['status'],
      customerId: List<String>.from(json['customer_id']),
      cleanerId: json['cleaner_id'],
      userId: json['user_id'],
      pdfUrl: json['pdf_url'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      notes: json['notes'],
    );
  }

  // Convert WorkOrder instance to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'status': status,
      'customer_id': customerId,
      'cleaner_id': cleanerId,
      'user_id': userId,
      'pdf_url': pdfUrl,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'notes': notes,
    };
  }
}
