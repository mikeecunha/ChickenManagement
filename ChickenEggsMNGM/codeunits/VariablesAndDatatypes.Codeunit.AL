codeunit 50100 VariablesAndDatatypes
{
    trigger OnRun()
    begin
        String2 := CopyStr(String1, 1, MaxStrLen(String2));
        String1 := 'HelloWorldOfManyManyCharactersInTheString';
        Message(String1);
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
    end;

    var
        Color: Option Red,Green,Blue;
        LoopNo: Integer;
        MyDate: Date;
        LoopNoDec: Decimal;
        String1: Text[60];
        String2: Text[30];

}