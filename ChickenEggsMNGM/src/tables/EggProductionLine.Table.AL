table 50101 "Egg Production Line"
{
    DataClassification = CustomerContent;
    Caption = 'Egg Production Line';
    DrillDownPageId = "Egg Production Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';

        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';

        }
        field(3; "Chicken no."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken no.';
            TableRelation = Chicken;
            trigger OnValidate()
            begin
                CalcFields("Chicken Description")
            end;
        }
        field(4; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Production Date';

        }
        field(5; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            TableRelation = "Egg Type";
            trigger OnValidate()
            begin
                CalcFields("Egg Type Description")
            end;

        }
        field(6; "Quantity"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
        }
        field(7; "Chicken Description"; Text[100])
        {
            //DataClassification = CustomerContent;
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Chicken.Description where("No." = field("Chicken no.")));
            Editable = false;

        }
        field(8; "Egg Type Description"; Text[100])
        {
            //DataClassification = CustomerContent;
            Caption = 'Egg Type Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Egg Type".Description where(Code = field("Egg Type Code")));
        }
    }

    keys
    {
        key(Pk; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}