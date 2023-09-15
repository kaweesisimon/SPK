report 50100 Sample
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Seminar; Seminar)
        {
            DataItemTableView = where(Blocked = filter(true));

            column(Blocked_Seminar; Blocked)
            {
            }
            column(Comment_Seminar; Comment)
            {
            }
            column(LastDateModified_Seminar; "Last Date Modified")
            {
            }
            column(MaximumParticipants_Seminar; "Maximum Participants")
            {
            }
            column(MinimumParticipants_Seminar; "Minimum Participants")
            {
            }
            column(Name_Seminar; Name)
            {
            }
            column(No_Seminar; "No.")
            {
            }
            column(SeminarDuration_Seminar; "Seminar Duration")
            {
            }
            column(SeminarPrice_Seminar; "Seminar Price")
            {
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'Sample.rdl';
        }
    }

    var
        myInt: Integer;
}