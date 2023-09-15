table 50106 "Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'setup table';
    LookupPageId = "Seminar Setup";
    DrillDownPageId = "Seminar Setup";


    fields
    {
        field(1; "Primary Key"; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
        }
        field(2; "Seminar Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Seminar Registration Nos."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
