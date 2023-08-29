//Seminar Setup

page 50105 "Seminars"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';

    layout
    {
        area(Content)
        {
            repeater(GroupNamAe)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;

                }
                field("Seminar Nos."; Rec."Seminar Nos.")
                {
                    ApplicationArea = All;

                }
                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = All;

                }
                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = Area;
                    ToolTip = 'Minimum Participants';
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
    }
}