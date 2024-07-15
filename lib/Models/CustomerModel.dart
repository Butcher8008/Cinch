class CustomerModel {
  final int id;
  final String name;
  final String company;
  final String address;
  final String email;
  final int userId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String phone;
  final String? note;
  final String? avatar;
  final String? cleaningTime;
  final List<String> days;
  final bool isCustomer;
  final List<int> cleaner;
  final String city;
  final String state;
  final String zip;
  final String? alternativeEmail;
  final String? alternativePhone;

  CustomerModel({
    required this.id,
    required this.name,
    required this.company,
    required this.address,
    required this.email,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.phone,
    this.note,
    this.avatar,
    this.cleaningTime,
    required this.days,
    required this.isCustomer,
    required this.cleaner,
    required this.city,
    required this.state,
    required this.zip,
    this.alternativeEmail,
    this.alternativePhone,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json['id'],
      name: json['name'],
      company: json['company'],
      address: json['address'],
      email: json['email'],
      userId: json['user_id'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      phone: json['phone'],
      note: json['note'],
      avatar: json['avatar'],
      cleaningTime: json['cleaning_time'],
      days: List<String>.from(json['days'].map((day) => day.trim())),
      isCustomer: json['is_customer'] == 1,
      cleaner: List<int>.from(json['cleaner'].map((cleanerId) => int.parse(cleanerId))),
      city: json['city'],
      state: json['state'],
      zip: json['zip'],
      alternativeEmail: json['alternative_email'],
      alternativePhone: json['alternative_phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'company': company,
      'address': address,
      'email': email,
      'user_id': userId,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'phone': phone,
      'note': note,
      'avatar': avatar,
      'cleaning_time': cleaningTime,
      'days': days,
      'is_customer': isCustomer ? 1 : 0,
      'cleaner': cleaner.map((cleanerId) => cleanerId.toString()).toList(),
      'city': city,
      'state': state,
      'zip': zip,
      'alternative_email': alternativeEmail,
      'alternative_phone': alternativePhone,
    };
  }
}