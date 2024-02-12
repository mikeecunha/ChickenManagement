codeunit 50102 Upgrade
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        myInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(myInfo);
        if myInfo.DataVersion().Major() = 2 then
            ChangeChickenTypes();
    end;

    local procedure UpgradeChickenType(OldTypeCode: code[20]; NewTypeCode: code[20]; NewTypeDescription: text[200])
    var
        ChickenType: Record "Chicken Type";
    begin
        if ChickenType.Get(OldTypeCode) then begin
            ChickenType.Rename(NewTypeCode);
            ChickenType.Description := NewTypeDescription;
            ChickenType.Modify();
        end;
    end;

    local procedure ChangeChickenTypes()
    begin
        UpgradeChickenType('CH-001', 'Type 01', 'Chicken Type 01');
        UpgradeChickenType('CH-002', 'Type 02', 'Chicken Type 02');
        UpgradeChickenType('CH-003', 'Type 03', 'Chicken Type 03')
    end;
}