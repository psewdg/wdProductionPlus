page 71994806 "InsertRoutingLine"
{
    PageType = Card;
    SourceTable = "Routing Line";
    ApplicationArea = All;
    Caption = 'InsertRoutingLine';
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Operation No."; Rec."Operation No.") { ApplicationArea = All; }
                field(Type; Rec.Type) { ApplicationArea = All; }
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Setup Time"; Rec."Setup Time") { ApplicationArea = All; }
                field("Run Time"; Rec."Run Time") { ApplicationArea = All; }
                field("Wait Time"; Rec."Wait Time") { ApplicationArea = All; }
                field("Move Time"; Rec."Move Time") { ApplicationArea = All; }
                field("Fixed Scrap Quantity"; Rec."Fixed Scrap Quantity") { ApplicationArea = All; }
                field("Scrap Factor %"; Rec."Scrap Factor %") { ApplicationArea = All; }
                field("Concurrent Capacities"; Rec."Concurrent Capacities") { ApplicationArea = All; }
                field("Send-Ahead Quantity"; Rec."Send-Ahead Quantity") { ApplicationArea = All; }
                field("Unit Cost per"; Rec."Unit Cost per") { ApplicationArea = All; }
                field("Run Time Unit of Meas. Code"; Rec."Run Time Unit of Meas. Code") { ApplicationArea = All; }
                field("Lot Size"; Rec."Lot Size") { ApplicationArea = All; }
                field("Maximum Process Time"; Rec."Maximum Process Time") { ApplicationArea = All; }
                field("Minimum Process Time"; Rec."Minimum Process Time") { ApplicationArea = All; }
                field("Next Operation No."; Rec."Next Operation No.") { ApplicationArea = All; }
                field("Setup Time Unit of Meas. Code"; Rec."Setup Time Unit of Meas. Code") { ApplicationArea = All; }
                field("Standard Task Code"; Rec."Standard Task Code") { ApplicationArea = All; }
                field("Move Time Unit of Meas. Code"; Rec."Move Time Unit of Meas. Code") { ApplicationArea = All; }
                field("Routing Link Code"; Rec."Routing Link Code") { ApplicationArea = All; }
                field("Previous Operation No."; Rec."Previous Operation No.") { ApplicationArea = All; }
                field("Wait Time Unit of Meas. Code"; Rec."Wait Time Unit of Meas. Code") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Finish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                Image = Approve;

                trigger OnAction()
                var
                    WDProductionPlusMgt: Codeunit "WD Production Plus Mgt";
                begin
                    WDProductionPlusMgt.SetRoutingHeaderCertified(RoutingNo);
                    CurrPage.Close();
                end;
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process', Comment = 'Generated from the PromotedActionCategories property index 1.';

                actionref("finish_Promoted"; Finish)
                {
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if RoutingNo = '' then
            Error(Error01);
        Rec.SetRange("Routing No.", RoutingNo);
        RoutingHeader.Get(RoutingNo);
        if not confirm(Text001, false) then
            CurrPage.Close();
        WDProductionPlusMgt.setRoutingHeaderUnderDevelopment(RoutingNo);
    end;

    procedure SetRoutingNo(NewRoutingNo: Code[20])
    begin
        RoutingNo := NewRoutingNo;
    end;

    var
        RoutingNo: Code[20];
        RoutingHeader: Record "Routing Header";
        Error01: Label 'Routing No. must be set.';
        Text001: Label 'Do you want to set the Routing Plan Header to Status Under Development?';
        WDProductionPlusMgt: Codeunit "WD Production Plus Mgt";
}
