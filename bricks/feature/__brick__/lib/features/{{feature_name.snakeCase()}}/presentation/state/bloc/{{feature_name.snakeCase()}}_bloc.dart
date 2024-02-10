import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../domain/use_case/get_use_case.dart';

part '{{feature_name.snakeCase()}}_event.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
final {{feature_name.pascalCase()}}UseCae useCae;
{{feature_name.pascalCase()}}Bloc(this.useCae) : super(const {{feature_name.pascalCase()}}State()) {
on<{{feature_name.pascalCase()}}Event>((event, emit) {

}) ;
}
}
