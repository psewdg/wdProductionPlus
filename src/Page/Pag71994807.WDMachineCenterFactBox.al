page 71994807 "WD Machine Center FactBox"
{
    PageType = CardPart;
    SourceTable = "Machine Center";
    ApplicationArea = All;
    Caption = 'Machine Center FactBox';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Name; Rec.Name) { ApplicationArea = All; }
                field("Search Name"; Rec."Search Name") { ApplicationArea = All; }
                field("Name 2"; Rec."Name 2") { ApplicationArea = All; }
                field("Work Center No."; Rec."Work Center No.") { ApplicationArea = All; }
                field("Direct Unit Cost"; Rec."Direct Unit Cost") { ApplicationArea = All; }
                field("Indirect Cost %"; Rec."Indirect Cost %") { ApplicationArea = All; }
                field("Unit Cost"; Rec."Unit Cost") { ApplicationArea = All; }
                field("Queue Time"; Rec."Queue Time") { ApplicationArea = All; }
                field("Last Date Modified"; Rec."Last Date Modified") { ApplicationArea = All; }
                field(Capacity; Rec.Capacity) { ApplicationArea = All; }
                field(Efficiency; Rec.Efficiency) { ApplicationArea = All; }
                field("Maximum Efficiency"; Rec."Maximum Efficiency") { ApplicationArea = All; Visible = false; }
                field("Minimum Efficiency"; Rec."Minimum Efficiency") { ApplicationArea = All; Visible = false; }
                field(Blocked; Rec.Blocked) { ApplicationArea = All; }
                field("Setup Time"; Rec."Setup Time") { ApplicationArea = All; }
                field("Wait Time"; Rec."Wait Time") { ApplicationArea = All; }
                field("Move Time"; Rec."Move Time") { ApplicationArea = All; }
                field("Fixed Scrap Quantity"; Rec."Fixed Scrap Quantity") { ApplicationArea = All; }
                field("Scrap %"; Rec."Scrap %") { ApplicationArea = All; }
                field("Send-Ahead Quantity"; Rec."Send-Ahead Quantity") { ApplicationArea = All; Visible = false; }
                field("Concurrent Capacities"; Rec."Concurrent Capacities") { ApplicationArea = All; Visible = false; }
                field("Flushing Method"; Rec."Flushing Method") { ApplicationArea = All; }
                field("Overhead Rate"; Rec."Overhead Rate") { ApplicationArea = All; }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group") { ApplicationArea = All; }
                field("Location Code"; Rec."Location Code") { ApplicationArea = All; }
            }
        }
    }
}