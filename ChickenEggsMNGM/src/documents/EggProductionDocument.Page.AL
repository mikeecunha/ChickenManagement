page 50102 "Egg Production Document"
{
    Caption = 'Egg Production Document';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Egg Production Header";

    layout
    {
        area(Content)
        {
            group(General)
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
            part(Lines; "Egg Production Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
        }
    }
}