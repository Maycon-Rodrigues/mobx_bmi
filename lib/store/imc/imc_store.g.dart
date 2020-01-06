// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IMCStore on _IMCStore, Store {
  final _$heightAtom = Atom(name: '_IMCStore.height');

  @override
  String get height {
    _$heightAtom.context.enforceReadPolicy(_$heightAtom);
    _$heightAtom.reportObserved();
    return super.height;
  }

  @override
  set height(String value) {
    _$heightAtom.context.conditionallyRunInAction(() {
      super.height = value;
      _$heightAtom.reportChanged();
    }, _$heightAtom, name: '${_$heightAtom.name}_set');
  }

  final _$weightAtom = Atom(name: '_IMCStore.weight');

  @override
  String get weight {
    _$weightAtom.context.enforceReadPolicy(_$weightAtom);
    _$weightAtom.reportObserved();
    return super.weight;
  }

  @override
  set weight(String value) {
    _$weightAtom.context.conditionallyRunInAction(() {
      super.weight = value;
      _$weightAtom.reportChanged();
    }, _$weightAtom, name: '${_$weightAtom.name}_set');
  }

  final _$resultAtom = Atom(name: '_IMCStore.result');

  @override
  String get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$_IMCStoreActionController = ActionController(name: '_IMCStore');

  @override
  void setHeight(String value) {
    final _$actionInfo = _$_IMCStoreActionController.startAction();
    try {
      return super.setHeight(value);
    } finally {
      _$_IMCStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeight(String value) {
    final _$actionInfo = _$_IMCStoreActionController.startAction();
    try {
      return super.setWeight(value);
    } finally {
      _$_IMCStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcImc() {
    final _$actionInfo = _$_IMCStoreActionController.startAction();
    try {
      return super.calcImc();
    } finally {
      _$_IMCStoreActionController.endAction(_$actionInfo);
    }
  }
}
