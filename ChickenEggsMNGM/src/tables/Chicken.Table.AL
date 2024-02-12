table 50120 Chicken
{
    Caption = 'Chicken';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Chicken Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = "Chicken Type";
            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;
        }
        field(4; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Modified Date';
            Editable = false;
        }
        field(5; "Picture"; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            Caption = 'Chicken Type Descritpion';
            //to be able to access lookup/calculated field
            FieldClass = FlowField;
            //alway make the field no editable because it's a calculated field
            Editable = false;
            //Call a lookup to show the description automatically
            CalcFormula = lookup("Chicken Type".Description where(Code = field("Chicken Type Code")));
        }
        field(7; "Egg Produced"; Decimal)
        {
            Caption = 'Egg Produced';
            FieldClass = FlowField;
            CalcFormula = sum("Egg Production Line".Quantity where("Chicken no." = field("No."),
                            "Egg Production Date" = field("Date Filter"),
                            "Egg Type Code" = field("Egg Type Filter")));
            Editable = false;
        }
        field(8; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            TableRelation = "Egg Type";
            FieldClass = FlowFilter;
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code") { }
        fieldgroup(Brick; Description, "Picture") { }
        // Add changes to field groups here
    }
    trigger OnDelete()
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can''t detele it.', Comment = '%1 = Chicken No. ; %2 = Chicken Description';
    begin
        Clear(EggProductionLine);
        //EggProductionLine.FindSet(); //my solution
        EggProductionLine.SetRange("Chicken no.", Rec."No.");
        //if EggProductionLine."Chicken no." = rec."No." then Error(ChickenHasEggsErr); //error message not correct
        if not EggProductionLine.IsEmpty then Error(ChickenHasEggsErr, rec."No.", Rec.Description);
    end;

}