page 50104 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Lists;
    //SourceTable = TableName;

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;
            }
            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;
            }
            part(O365Activities; "O365 Activities")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                Image = Calculator;
                action(ChickenList)
                {
                    Caption = 'Chicken List';
                    ApplicationArea = All;
                    RunObject = page "Chicken List";
                }
                action(ChickenTypes)
                {
                    Caption = 'Chicken Types List';
                    ApplicationArea = All;
                    RunObject = page "Chicken Type List";
                }
            }
            group(Documents)
            {
                action(EggProduction)
                {
                    Caption = 'Egg Production';
                    ApplicationArea = All;
                    RunObject = page "Egg Production List";
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types List';
                    ApplicationArea = All;
                    RunObject = page "Egg Type List";
                }

            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                ApplicationArea = All;
                Caption = 'Chicken List';
                RunObject = page "Chicken List";
            }
            action(eChickenTypes)
            {
                ApplicationArea = All;
                Caption = 'Chicken Types';
                RunObject = page "Chicken Type List";
            }
            action(eEggProduction)
            {
                ApplicationArea = All;
                Caption = 'Egg Production';
                RunObject = page "Egg Production List";
            }
            action(eEggTypes)
            {
                ApplicationArea = All;
                Caption = 'Egg Types';
                RunObject = page "Egg Type List";
            }

        }
    }
}