page 50121 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists; //just for testing
    SourceTable = Chicken;
    CardPageId = "Chicken Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
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
            action(MyAmazingAction)
            {
                Caption = 'My Amazing Action';
                Image = "8ball";
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
            action(MyAmazingAction2)
            {
                Caption = 'My Amazing Action2';
                Image = AboutNav;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Hello there!');
                end;
            }
            action(test)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    call: Codeunit VariablesAndDatatypes;
                begin
                    call.Run();
                end;
            }

        }
    }
}