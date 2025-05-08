import 'package:floor/floor.dart';
import 'package:quickmart/entities/product.dart';

@Entity(tableName: 'favorites', foreignKeys: [
  ForeignKey(
    childColumns: ['productId'], // Column in this entity
    parentColumns: ['id'], // Column in the parent entity
    entity: Product,
    onDelete: ForeignKeyAction.cascade, // Cascade deletion
  )
])
class FavoriteItem {
  @PrimaryKey(autoGenerate: false)
  late final int id;
  late final String productId;

  FavoriteItem({
    required this.id,
    required this.productId,
  });
}
