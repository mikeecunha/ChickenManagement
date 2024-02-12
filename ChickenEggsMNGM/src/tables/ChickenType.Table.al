table 50121 "Chicken Type"
{
    DataClassification = CustomerContent;
    DrillDownPageId = "Chicken Type Card";
    //DrillDowwnPageId allows the "+new" option to show in the dropdown
    LookupPageId = "Chicken Type Card";

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}