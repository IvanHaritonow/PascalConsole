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
     textcolor(1);
     WriteLn('1 - Example');
     textcolor(2);
     WriteLn('2 - Example');
     textcolor(3);
     WriteLn('3 - Example');
     textcolor(4);
     WriteLn('4 - Example');
     textcolor(5);
     WriteLn('5 - Example');
     textcolor(6);
     WriteLn('6 - Example');
     textcolor(7);
     WriteLn('7 - Example');
     textcolor(8);
     WriteLn('8 - Example');
     textcolor(9);
     WriteLn('9 - Example');
     textcolor(10);
     WriteLn('10 - Example');
     textcolor(11);
     WriteLn('11 - Example');
     textcolor(12);
     WriteLn('12 - Example');
     textcolor(13);
     WriteLn('13 - Example');
     textcolor(14);
     WriteLn('14 - Example');
     textcolor(15);
     WriteLn('15 - Example');
     ReadLn(enter);
       if (enter > '9') then begin WriteLn('--Error number format--'); exit; end;
       col := enter.ToInteger;
       WriteLn(col);
       if (col > 0) and (col < 16) then begin
         WriteLn('-- Color install --'); exit; end 
         else begin col := 15; exit; end;
 end;
 colorT := '';
end;

 function colorTRus(): String; begin
   while (enter <> 'root') do begin
     WriteLn('Введите номер цвета, который хотите установить: ');
     textcolor(1);
     WriteLn('1 - Пример');
     textcolor(2);
     WriteLn('2 - Пример');
     textcolor(3);
     WriteLn('3 - Пример');
     textcolor(4);
     WriteLn('4 - Пример');
     textcolor(5);
     WriteLn('5 - Пример');
     textcolor(6);
     WriteLn('6 - Пример');
     textcolor(7);
     WriteLn('7 - Пример');
     textcolor(8);
     WriteLn('8 - Пример');
     textcolor(9);
     WriteLn('9 - Пример');
     textcolor(10);
     WriteLn('10 - Пример');
     textcolor(11);
     WriteLn('11 - Пример');
     textcolor(12);
     WriteLn('12 - Пример');
     textcolor(13);
     WriteLn('13 - Пример');
     textcolor(14);
     WriteLn('14 - Пример');
     textcolor(15);
     WriteLn('15 - Пример');
     ReadLn(enter);
       if (enter > '9') then begin WriteLn('--Неверный формат номера--'); exit; end;
       col := enter.ToInteger;
       WriteLn(col);
       if (col > 0) and (col < 16) then begin
         WriteLn('-- Цвет установлен --'); exit; end 
         else begin col := 15; exit; end;
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
     //WriteLn();
     helpRus := 0;
  end;

   begin
    col := 15;
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
       case enter[1] + enter[2] of
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
end.