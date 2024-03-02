part of 'singin_cubit.dart';

sealed class SinginState {}

final class SinginInitial extends SinginState {}
final class LangChangedProcess extends SinginState {

final  String lang;

  LangChangedProcess(this.lang);
}
