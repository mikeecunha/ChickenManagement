page 50100 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document No. field.';
                    ApplicationArea = All;

                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    ApplicationArea = All;
                }
                field("Chicken no."; Rec."Chicken no.")
                {
                    ToolTip = 'Specifies the value of the Chicken no. field.';
                    ApplicationArea = All;
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ToolTip = 'Specifies the value of the Chicken Description field.';
                    ApplicationArea = All;
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ToolTip = 'Specifies the value of the Egg Production Date field.';
                    ApplicationArea = All;
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ToolTip = 'Specifies the value of the Egg Type Code field.';
                    ApplicationArea = All;
                }
                field("Egg Type Description"; Rec."Egg Type Description")
                {
                    ToolTip = 'Specifies the value of the Egg Type Description field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}