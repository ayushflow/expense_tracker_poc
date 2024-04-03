// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseModelStruct extends BaseStruct {
  ExpenseModelStruct({
    String? title,
    double? amount,
  })  : _title = title,
        _amount = amount;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  static ExpenseModelStruct fromMap(Map<String, dynamic> data) =>
      ExpenseModelStruct(
        title: data['title'] as String?,
        amount: castToType<double>(data['amount']),
      );

  static ExpenseModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpenseModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
      }.withoutNulls;

  static ExpenseModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpenseModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ExpenseModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpenseModelStruct &&
        title == other.title &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash([title, amount]);
}

ExpenseModelStruct createExpenseModelStruct({
  String? title,
  double? amount,
}) =>
    ExpenseModelStruct(
      title: title,
      amount: amount,
    );
