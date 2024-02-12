page 50106 "Egg Type List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Type";
    Caption = 'Egg Type List';
    CardPageId = "Egg Type";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ToolTip = 'Insert Default Egg Types';
                ApplicationArea = All;
                Image = Add;

                trigger OnAction()
                var
                    EggType: Record "Egg Type";
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table';
                begin
                    EggType.FindSet();
                    if EggType.IsEmpty then begin
                        EggType.InsertEggType('001214', 'Something1');
                        EggType.InsertEggType('001215', 'Something2');
                        EggType.InsertEggType('001216', 'Something3')
                    end
                    else
                        Error(EggTypeNotEmptyErr);
                end;
            }
        }
    }
}