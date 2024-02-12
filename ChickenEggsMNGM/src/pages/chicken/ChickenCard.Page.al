page 50120 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists; //just for testing 
    SourceTable = Chicken;
    Editable = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Code field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Modified Date field.';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Descritpion field.';
                }
                field("Egg Produced"; Rec."Egg Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Produced field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}