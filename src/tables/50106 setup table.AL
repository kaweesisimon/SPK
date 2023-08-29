table 50106 "Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'setup table';
    LookupPageId = "Seminar Setup";
    DrillDownPageId = "Seminar Setup";


    fields
    {
        field(1; "Primary Key"; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
        }
        field(2; "Seminar Nos."; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Seminar Registration Nos."; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Posted Seminar Reg. Nos."; Code[10])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
            DataClassification = CustomerContent;

        }
        field(5; EnableNewsletter; option)
        {
            OptionMembers = " ","Full","Limitted";
            OptionCaption = ' ,Full,Limitted';
            Caption = 'Enables Newsletter';
            DataClassification = CustomerContent;
        }
        field(6; FreeGiftAvailable; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Free Gifts Available';
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
