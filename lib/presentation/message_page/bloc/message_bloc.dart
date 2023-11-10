import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/message_item_model.dart';
import 'package:symptomscout/presentation/message_page/models/message_model.dart';
part 'message_event.dart';
part 'message_state.dart';

/// A bloc that manages the state of a Message according to the event that is dispatched to it.
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc(MessageState initialState) : super(initialState) {
    on<MessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageInitialEvent event,
    Emitter<MessageState> emit,
  ) async {
    emit(state.copyWith(
        messageModelObj: state.messageModelObj
            ?.copyWith(messageItemList: fillMessageItemList())));
  }

  List<MessageItemModel> fillMessageItemList() {
    return [
      MessageItemModel(
          drMarcusHorizon: ImageConstant.imgProfileThumbnail,
          drMarcusHorizon1: "Dr. Marcus Horizon",
          time: "10.24",
          iDonTHaveAny: "I don,t have any fever, but headchace..."),
      MessageItemModel(
          drMarcusHorizon: ImageConstant.imgProfileThumbnail50x50,
          drMarcusHorizon1: "Dr. Alysa Hana",
          time: "09:04",
          iDonTHaveAny: "Hello, How can i help you?"),
      MessageItemModel(
          drMarcusHorizon: ImageConstant.imgProfileThumbnail1,
          drMarcusHorizon1: "Dr. Maria Elena",
          time: "08:57",
          iDonTHaveAny: "Do you have fever?")
    ];
  }
}
