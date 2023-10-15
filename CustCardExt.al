pageextension 70200 CustCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Name2; Rec."Name 2")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'This is where you can put the DBA or alternative business name.';
                CaptionML = ENU = 'DBA Name', ENG = 'Secondary Name';
            }
        }

        addafter("Salesperson Code")
        {
            field(SIC; Rec."SIC Code")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'Enter the Industry Code in this field';
                Visible = False;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}