import 'package:equatable/equatable.dart';

final class SafeAreaInset extends Equatable {
  final double left;
  final double top;
  final double right;
  final double bottom;

  const SafeAreaInset({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  @override
  List<Object> get props => [
    "left: $left",
    "top: $top",
    "right: $right",
    "bottom: $bottom",
  ];
}
