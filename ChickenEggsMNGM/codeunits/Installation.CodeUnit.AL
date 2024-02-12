codeunit 50101 Installation
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record "Chicken Type";
    begin
        if not ChickenType.IsEmpty then
            exit
        else begin
            InsertChickenType('CH-001', 'AABB');
            InsertChickenType('CH-002', 'BBCC');
            InsertChickenType('CH-003', 'CCDD');
        end;
    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
    var
        ChickenType: Record "Chicken Type";
    begin
        Clear(ChickenType);
        ChickenType.Code := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert();
    end;

    var
        myInt: Integer;
}