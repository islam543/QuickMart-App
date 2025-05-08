import 'package:floor/floor.dart';
import 'package:quickmart/entities/product.dart';

@Entity(tableName: 'cart_items', foreignKeys: [
  ForeignKey(
    childColumns: ['productId'], // Column in this entity
    parentColumns: ['id'], // Column in the parent entity
    entity: Product,
    onDelete: ForeignKeyAction.cascade, // Cascade deletion
  )
])
class CartItem {
  @PrimaryKey(autoGenerate: false)
  final int id;
  final String productId;
  final int quantity; // Foreign key linking to the Owner table

  CartItem({required this.id, required this.productId, required this.quantity});
}
