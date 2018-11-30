program abc;
 uses crt;
 var
   enter: String;
   language, col: Integer;
   


 function root(a:String):String; begin
   while (a <> 'root') do begin
    WriteLn('--You are in the Main folder--');
    WriteLn('1 -first-');
    WriteLn('2 -second-');
    WriteLn('3 -third-');
    ReadLn(a);
      if (a = '1') then WriteLn('File -first is empty')
 else if (a ='2') then WriteLn('File -second is empty')
 else if (a = '3') then WriteLn('File -third is empty')
 else if (a = 'root') then break
 else if (a = 'clear') then clrscr
 else WriteLn('File not aviable');
 root := '';
   end;
end;

function rootRus(a:String):String; begin
   while (a <> 'домой') do begin
    WriteLn('--Вы находитесь в главной папке--');
    WriteLn('1 -first-');
    WriteLn('2 -second-');
    WriteLn('3 -third-');
    ReadLn(a);
      if (a = '1') then WriteLn('Файл -first пустой')
 else if (a ='2') then WriteLn('Файл -stcond пустой')
 else if (a = '3') then WriteLn('Файл -third пустой')
 else if (a = 'домой') then break
 else if (a = 'убрать') then clrscr
 else WriteLn('Файл не найден');
 rootRus := '';
   end;
end;

 function colorT(): String; begin
   while (enter <> 'root') do begin
     WriteLn('Enter the color number you want to set: ');
     for i: Integer := 1 to 15 do begin
          textcolor(i);
          WriteLn(i, ' - Example');
     end;
     ReadLn(enter);
       if (enter > '9') or (length(enter) = 0) then begin WriteLn('--Error number format--'); exit; end;
       col := enter.ToInteger;
       if (col > 0) and (col < 16) then begin
         WriteLn('-- Color install --'); exit; end 
         else begin col := 15; WriteLn('--Error number format--'); exit; end;
 end;
 colorT := '';
end;

 function colorTRus(): String; begin
   while (enter <> 'root') do begin
     WriteLn('Введите номер цвета, который хотите установить: ');
       for i: Integer := 1 to 15 do begin
            textcolor(i);
            WriteLn(i, ' - Пример');
       end;
     ReadLn(enter);
       if (enter > '9') or (length(enter) = 0) then begin WriteLn('--Неверный формат номера--'); exit; end;
       col := enter.ToInteger;
       if (col > 0) and (col < 16) then begin
         WriteLn('-- Цвет установлен --'); exit; end 
         else begin col := 15; WriteLn('--Неверный формат номера--'); exit; end;
 end;
 colorTRus := '';
end;


  function help():Integer; begin
     WriteLn('- help: print a list of commands');
     WriteLn('- exit: close the console');
     WriteLn('- open: go to folders');
     WriteLn('- clear: clear the screen');
     WriteLn('- root: back to top');
     WriteLn('- rus: change language to the russian');
     WriteLn('- eng: change language to the english');
     WriteLn('- color: change colot text');
     //WriteLn();
     help := 0;
  end;
  
  function helpRus():Integer; begin
     WriteLn('- помощь: вывести список команд');
     WriteLn('- выход: закрыть консоль');
     WriteLn('- открыть: перейти к папкам');
     WriteLn('- очистить: очистить экран');
     WriteLn('- домой: вернуться в корень программы');
     WriteLn('- рус: поменять язык на русский');
     WriteLn('- инг: поменять язык на английский');
     WriteLn('- цвет: поменять цвет текста');
     //WriteLn();
     helpRus := 0;
  end;

   begin
    col := 7;
    language := 0;
    clrscr();
       WriteLn('----------------------------');
       WriteLn(' Haritonov Corp. Complier ');
       WriteLn('       Version 1.0 ');
       WriteLn('----------------------------');
       WriteLn();
      
       WriteLn('--Enter "help" for a hint--');
       WriteLn('--Введите "помощь" для подсказки--');
       WriteLn();

   while (enter <> 'exit') do begin
     textcolor(col);
     if (language = 0) then WriteLn('--You are on the root--')
     else WriteLn('--Вы находитесь в корне программы--');
     ReadLn(enter);
     if (length(enter) < 2) then Write('') else begin
       case enter[1] + enter[2] of
      'g'+'a' : ;
      'в'+'ы' : exit;
      'e'+'x' : exit;
      'c'+'o' : colorT();
      'ц'+'в' : colorTRus();
      'о'+'т' : rootRus(enter);
      'o'+'p' : root(enter);
      'о'+'ч' : clrscr();
      'c'+'l' : clrscr();
      'п'+'о' : helpRus();
      'h'+'e' : help();
      'r'+'u' : begin language := 1; WriteLn('- Язык установлен на русский -'); end;
      'e'+'n' : begin language := 0; WriteLn('- Language changed to English -'); end;
      'р'+'у' : begin language := 1; WriteLn('- Язык установлен на русский -'); end;
      'и'+'н' : begin language := 0; WriteLn('- Language changed to English -'); end;
        else if (language = 0) then
           WriteLn('Sorry, what?')
           else WriteLn('Чего?');
      end
    end;
  end;
end.