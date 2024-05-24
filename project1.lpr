program project1;

uses
  tgsendertypes,
  tgtypes, jsonparser;

var
  FBot: TTelegramSender;
  IM: TReplyMarkup;
  IK: TInlineKeyboard;
  KB: TInlineKeyboardButton;
begin
  IM := TReplyMarkup.Create;
  IK := IM.CreateInlineKeyBoard;
  IK.AddButton('Horários', 'reportChoice:timeRecord', 2);

  //writeln(IM.AsString);
  FBot := TTelegramSender.Create('6673660206:AAEMArriIha1fBdlsk_UteVG3Ezh9r6UNog');
  FBot.sendMessage(5521917244, 'test', pmDefault, False, IM);

end.
