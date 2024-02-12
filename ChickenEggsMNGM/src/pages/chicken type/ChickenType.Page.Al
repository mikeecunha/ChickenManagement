page 50122 "Chicken Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists; //just for testing
    SourceTable = "Chicken Type";
    Editable = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
}