import 'package:meta/meta.dart';

class Either<L, R> {
  final L _left;
  final R _right;
  final bool _isRight;

  Either._({
    L left,
    R right,
    @required bool isRight,
  })  : _left = left,
        _right = right,
        _isRight = isRight;
  
  factory Either.left(L left) {
    return Either._(
      left: left,
      isRight: false,
    );
  }

  factory Either.right(R right) {
    return Either._(
      right: right,
      isRight: true,
    );
  }

  bool get isRight => _isRight;

  bool get isLeft => !_isRight;

  R get value => _right;

  L get getElse => _left;
}
