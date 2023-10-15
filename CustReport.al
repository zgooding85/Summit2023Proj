report 70101 "Customer Name 2 Update"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                if Customer."Name 2" = '' then begin
                    Customer."Name 2" := UserInput;
                    Customer.Modify();
                end;
                //if Customer."Last Date Modified" = 0d then 
                //    Customer."Last Date Modified" := whatever;
            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin
                Message('Update Completed;');
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Customer)
                {
                    field("Enter Value for blank Name 2 field"; UserInput)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }


    }


    var
        myInt: Integer;
        UserInput: Code[12];
}