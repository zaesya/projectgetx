class ItemModel {
  int? id;
  String name;
  bool isSelected;

  ItemModel({this.id, required this.name, this.isSelected = false});

  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isSelected': isSelected ? 1 : 0,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'],
      name: map['name'],
      isSelected: map['isSelected'] == 1,
    );
  }
}
