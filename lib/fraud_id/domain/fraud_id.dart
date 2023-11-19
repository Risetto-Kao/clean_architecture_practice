import 'package:equatable/equatable.dart';

class FraudID extends Equatable {
  const FraudID({
    required this.id,
    required this.reportDate,
  });

  final String id;
  final DateTime reportDate;

  @override
  List<Object?> get props => [
        id,
        reportDate,
      ];
}
