type man = record
  full_name: string;
  year: integer;
  gender: string;
  education:string;
  family:string;
  count_childrens: integer;
  avg_income: real;
end;
var mans:array[1 .. 100] of man;
var t: man;
var n, i, j: integer;
var f:string;
var sum: real;
var begin_full_name, end_full_name: string;
var begin_year, end_year: integer;
var begin_avg_income, end_avg_income: real;
procedure output_man(m:man);
begin
  writeln('-------------');
  writeln('full_name: ', m.full_name);
  writeln('year: ', m.year);
  writeln('gender: ', m.gender);
  writeln('education: ', m.education);
  writeln('family: ', m.family);
  writeln('count_childrens: ', m.count_childrens);
  writeln('avg_income: ', m.avg_income);
  writeln('-------------');
end;
begin
  sum := 0;
  write('n='); readln(n);
  for i := 1 to n do
  begin
    writeln('Man', i);
    write('full_name='); readln(mans[i].full_name);
    write('year='); readln(mans[i].year);
    write('gender='); readln(mans[i].gender);
    write('education='); readln(mans[i].education);
    write('family='); readln(mans[i].family);
    write('count_childrens='); readln(mans[i].count_childrens);
    write('avg_income='); readln(mans[i].avg_income);
    writeln();
    sum := sum + mans[i].avg_income;
  end;
  writeln('avg=', sum / n);  
  writeln('select a filter: ');
  writeln('1. full_name');
  writeln('2. year');
  writeln('3. avg_income');
  readln(f);
  case f of 
    '1', 'full_name':
    begin
      write('begin_full_name: '); readln(begin_full_name);
      write('end_full_name: '); readln(end_full_name);
      for i := 1 to n do
        for j := 2 to n do
          if mans[j].full_name < mans[j - 1].full_name then
          begin
            t := mans[j]; mans[j] := mans[j - 1]; mans[j - 1] := t;
          end;
      for i := 1 to n do
        if (begin_full_name <= mans[i].full_name) and (mans[i].full_name <= end_full_name) then
          output_man(mans[i]);
    end;
    
    '2', 'year':
    begin
      write('begin_year: '); readln(begin_year);
      write('end_year: '); readln(end_year);
      for i := 1 to n do
        for j := 2 to n do
          if mans[j].year < mans[j - 1].year then
          begin
            t := mans[j]; mans[j] := mans[j - 1]; mans[j - 1] := t;
          end;
      for i := 1 to n do
        if (begin_year <= mans[i].year) and (mans[i].year <= end_year) then
          output_man(mans[i]);
    end;
    
    '3', 'avg_income':
    begin
      write('begin_avg_income: '); readln(begin_avg_income);
      write('end_avg_income: '); readln(end_avg_income);
      for i := 1 to n do
        for j := 2 to n do
          if mans[j].avg_income < mans[j - 1].avg_income then
          begin
            t := mans[j]; mans[j] := mans[j - 1]; mans[j - 1] := t;
          end;

      for i := 1 to n do
        if (begin_avg_income <= mans[i].avg_income) and (mans[i].avg_income <= end_avg_income) then
          output_man(mans[i]);
    end;
    else writeln('select not found');
  end;
end.