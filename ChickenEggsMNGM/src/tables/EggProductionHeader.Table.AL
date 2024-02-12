table 50124 "Egg Production Header"
{
    DataClassification = CustomerContent;
    Caption = 'Egg PRoduction Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Docment Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
    }
}