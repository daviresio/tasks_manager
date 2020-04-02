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

  final _$newCategoryColorSelectedAtom =
      Atom(name: '_MenuBase.newCategoryColorSelected');

  @override
  String get newCategoryColorSelected {
    _$newCategoryColorSelectedAtom.context
        .enforceReadPolicy(_$newCategoryColorSelectedAtom);
    _$newCategoryColorSelectedAtom.reportObserved();
    return super.newCategoryColorSelected;
  }

  @override
  set newCategoryColorSelected(String value) {
    _$newCategoryColorSelectedAtom.context.conditionallyRunInAction(() {
      super.newCategoryColorSelected = value;
      _$newCategoryColorSelectedAtom.reportChanged();
    }, _$newCategoryColorSelectedAtom,
        name: '${_$newCategoryColorSelectedAtom.name}_set');
  }

  final _$newCategoryTitleAtom = Atom(name: '_MenuBase.newCategoryTitle');

  @override
  String get newCategoryTitle {
    _$newCategoryTitleAtom.context.enforceReadPolicy(_$newCategoryTitleAtom);
    _$newCategoryTitleAtom.reportObserved();
    return super.newCategoryTitle;
  }

  @override
  set newCategoryTitle(String value) {
    _$newCategoryTitleAtom.context.conditionallyRunInAction(() {
      super.newCategoryTitle = value;
      _$newCategoryTitleAtom.reportChanged();
    }, _$newCategoryTitleAtom, name: '${_$newCategoryTitleAtom.name}_set');
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
  void setNewCategoryColorSelected(String value) {
    final _$actionInfo = _$_MenuBaseActionController.startAction();
    try {
      return super.setNewCategoryColorSelected(value);
    } finally {
      _$_MenuBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNewCategoryTitle(String value) {
    final _$actionInfo = _$_MenuBaseActionController.startAction();
    try {
      return super.setNewCategoryTitle(value);
    } finally {
      _$_MenuBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetNewCategory() {
    final _$actionInfo = _$_MenuBaseActionController.startAction();
    try {
      return super.resetNewCategory();
    } finally {
      _$_MenuBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'categoryList: ${categoryList.toString()},newCategoryColorSelected: ${newCategoryColorSelected.toString()},newCategoryTitle: ${newCategoryTitle.toString()}';
    return '{$string}';
  }
}
