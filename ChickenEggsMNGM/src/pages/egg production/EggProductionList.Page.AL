page 50103 "Egg Production List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Header";
    CardPageId = "Egg Production Document";
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Docment Date"; Rec."Docment Date")
                {
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

}