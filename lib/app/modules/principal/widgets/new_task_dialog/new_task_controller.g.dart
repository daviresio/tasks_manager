// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewTaskController on _PrincipalBase, Store {
  final _$titleAtom = Atom(name: '_PrincipalBase.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_PrincipalBase.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$_PrincipalBaseActionController =
      ActionController(name: '_PrincipalBase');

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_PrincipalBaseActionController.startAction();
    try {
      return super.setTitle(value);
    } finally {
      _$_PrincipalBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_PrincipalBaseActionController.startAction();
    try {
      return super.setDescription(value);
    } finally {
      _$_PrincipalBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'title: ${title.toString()},description: ${description.toString()}';
    return '{$string}';
  }
}
