//Seminar Setup

page 50105 "Seminars"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';
    UsageCategory = Administration;
    //InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {

            group("Number series")
            {

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
    trigger OnOpenPage()
    begin
        if NOT Rec.FINDFIRST THEN Rec.INSERT;
    end;
}