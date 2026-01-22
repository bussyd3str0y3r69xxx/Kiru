import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SendStatusEvent {

}
abstract class SendStatusState{

}

class SendStatusStateDisabled extends SendStatusState{

}
class SendStatusStateLoading{

}
class SendStatusBloc extends Bloc<SendStatusEvent,SendStatusState> {
  /// {@macro counter_bloc}
  SendStatusBloc() : super(SendStatusStateDisabled()) {

  }
}