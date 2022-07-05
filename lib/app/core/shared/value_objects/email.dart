import '../specifications/email_specification.dart';
import 'i_value_object.dart';

class Email implements IValueObject {
  String value;

  Email([this.value = '']);

  @override
  String errorMessage = 'Empty field';

  @override
  bool get isValid => EmailSpecification.isSatisfiedBy(value);

  @override
  String? hasError() => isValid ? null : errorMessage;
}
