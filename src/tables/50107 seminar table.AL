table 50107 "Seminar"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar';
    LookupPageId = "Seminars";
    DrillDownPageId = "Seminars";


    fields
    {
        field(1; "No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Name"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; "Seminar Duration"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Duration';
        }
        field(4; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';

        }
        field(5; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = CustomerContent;
        }
        field(6; "Search Name"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Search Name';
        }
        field(7; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = CustomerContent;
        }
        field(8; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(9; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist("Comment Line" where("Table Name" = const(Seminar)));
        }

        field(10; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = CustomerContent;
        }
        field(11; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Product Posting Group";
        }
        field(12; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "VAT Product Posting Group";
        }
        field(13; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "No.", "Search Name")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        SeminarSetupRec: Record "Seminar Setup";
        SeminarNo: Code[20];
    begin
        if "No." = '' then begin
            if SeminarSetupRec.GET then begin
                SeminarNo := SeminarSetupRec."Seminar Nos.";
                if SeminarNo <> '' then begin
                    // Get the next number from the number series
                    "No." := SeminarNo;
                end;
            end;
        end;

    end;

    trigger OnModify()
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        "Last Date Modified" := Today;

    end;

}
