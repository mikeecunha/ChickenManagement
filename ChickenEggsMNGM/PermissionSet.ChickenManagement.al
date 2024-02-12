permissionset 50100 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table Chicken = X,
        tabledata Chicken = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table "Egg Production Line" = X,
        tabledata "Egg Production Line" = RMID,
        table "Egg Type" = X,
        tabledata "Egg Type" = RMID,
        table "Chicken Type" = X,
        tabledata "Chicken Type" = RMID,
        codeunit Installation = X,
        codeunit VariablesAndDatatypes = X,
        page "Egg Production Document" = X,
        page "Chicken Management Rolecenter" = X,
        page "Chicken Type Card" = X,
        page "Chicken Type List" = X,
        page "Egg Production Line List" = X,
        page "Egg Production List" = X,
        page "Egg Type List" = X,
        page "Egg Type" = X,
        page "Egg Production Subpage" = X,
        page "Chicken List" = X,
        page "Chicken Card" = X;
}
