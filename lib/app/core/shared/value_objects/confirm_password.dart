import '../specifications/confirm_password_specification.dart';
import 'i_value_object.dart';

class ConfirmPassword implements IValueObject {
  String value;
  String password;

  ConfirmPassword([this.value = '', this.password = '']);

  @override
  String errorMessage = 'Empty value';

  @override
  bool get isValid => ConfirmPasswordSpecification.isSatisfiedBy(password, value);

  @override
  String? hasError() => isValid ? null : errorMessage;
}
