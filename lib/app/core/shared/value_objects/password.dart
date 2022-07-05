import '../specifications/password_specification.dart';
import 'i_value_object.dart';

class Password implements IValueObject {
  String value;

  Password([this.value = '']);

  @override
  String errorMessage = 'Empty field';

  @override
  bool get isValid => PasswordSpecification.isSatisfiedBy(value);

  @override
  String? hasError() => isValid ? null : errorMessage;
}
