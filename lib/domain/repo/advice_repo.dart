import 'package:advisor/domain/entity/advice_entity.dart';

abstract class AdviceRepo {
  Future<AdviceEntity> getAdviceFromDatasource();
}
