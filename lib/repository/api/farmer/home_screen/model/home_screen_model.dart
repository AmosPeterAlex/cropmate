class EquipmentListModel {
  int? status;
  List<Datum>? data;

  EquipmentListModel({
    this.status,
    this.data,
  });

  factory EquipmentListModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return EquipmentListModel(
        status: json["status"],
        data: json["data"] != null ? List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))) : [],
      );
    } else {
      return EquipmentListModel(status: 0, data: []);
    }
  }
}

class Datum {
  int? id;
  String? brand;
  String? eqipmentName;
  String? image;
  double? price;
  int? qty;
  String? description;
  bool? isAvailable;

  Datum({
    this.id,
    this.brand,
    this.eqipmentName,
    this.image,
    this.price,
    this.qty,
    this.description,
    this.isAvailable,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        brand: json["Brand"],
        eqipmentName: json["eqipment_name"],
        image: json["image"],
        price: json["price"],
        qty: json["qty"],
        description: json["description"],
        isAvailable: json["is_available"],
      );
}