tableextension 70101 CustTableExt extends Customer
{
    fields
    {
        field(70101; "SIC Code"; Code[12])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'SIC Code', ENG = 'Industry Code';
        }
    }

    var
        myInt: Integer;
}