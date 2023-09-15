//Seminar List page

page 50108 "Seminar Setup"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Seminar;
    Caption = 'Seminar';
    CardPageId = "seminar card page";

    layout
    {
        area(Content)
        {
            repeater(GroupNamAe)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Seminar Duration"; Rec."Seminar Duration")
                {
                    ApplicationArea = All;

                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ApplicationArea = Area;
                    ToolTip = 'Minimum Participants';
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;

                }
                field("Search Name"; Rec."Search Name")
                {
                    ApplicationArea = All;

                }
                field("Blocked"; Rec."Blocked")
                {
                    ApplicationArea = All;

                }

                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;

                }

                field("Comment"; Rec."Comment")
                {
                    ApplicationArea = All;

                }

                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;

                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;

                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;

                }
                field("No. Series"; Rec."No. Series")
                {
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
    }
}