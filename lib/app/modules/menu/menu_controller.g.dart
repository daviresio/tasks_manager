// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuController on _MenuBase, Store {
  final _$categoryListAtom = Atom(name: '_MenuBase.categoryList');

  @override
  ObservableStream<List<CategoryModel>> get categoryList {
    _$categoryListAtom.context.enforceReadPolicy(_$categoryListAtom);
    _$categoryListAtom.reportObserved();
    return super.categoryList;
  }

  @override
  set categoryList(ObservableStream<List<CategoryModel>> value) {
    _$categoryListAtom.context.conditionallyRunInAction(() {
      super.categoryList = value;
      _$categoryListAtom.reportChanged();
    }, _$categoryListAtom, name: '${_$categoryListAtom.name}_set');
  }

  final _$_MenuBaseActionController = ActionController(name: '_MenuBase');

  @override
  void listAll() {
    final _$actionInfo = _$_MenuBaseActionController.startAction();
    try {
      return super.listAll();
    } finally {
      _$_MenuBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'categoryList: ${categoryList.toString()}';
    return '{$string}';
  }
}
