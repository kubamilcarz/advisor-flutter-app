import 'package:advisor/domain/entity/advice_entity.dart';

class AdviceUseCases {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    return const AdviceEntity(advice: 'fake advice to test', id: 1);
  }
}
