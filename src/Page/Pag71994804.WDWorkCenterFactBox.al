page 71994804 "WD Work Center FactBox"
{
    PageType = CardPart;
    SourceTable = "Work Center";
    ApplicationArea = All;
    Caption = 'Workcenter FactBox';

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
                field("Alternate Work Center"; Rec."Alternate Work Center") { ApplicationArea = All; }
                field("Work Center Group Code"; Rec."Work Center Group Code") { ApplicationArea = All; }
                field("Subcontractor No."; Rec."Subcontractor No.") { ApplicationArea = All; }
                field("Direct Unit Cost"; Rec."Direct Unit Cost") { ApplicationArea = All; }
                field("Indirect Cost %"; Rec."Indirect Cost %") { ApplicationArea = All; }
                field("Unit Cost"; Rec."Unit Cost") { ApplicationArea = All; }
                field("Queue Time"; Rec."Queue Time") { ApplicationArea = All; }
                field("Last Date Modified"; Rec."Last Date Modified") { ApplicationArea = All; }
                field("Unit of Measure Code"; Rec."Unit of Measure Code") { ApplicationArea = All; }
                field(Capacity; Rec.Capacity) { ApplicationArea = All; }
                field(Efficiency; Rec.Efficiency) { ApplicationArea = All; }
                field("Maximum Efficiency"; Rec."Maximum Efficiency") { ApplicationArea = All; Visible = false; }
                field("Minimum Efficiency"; Rec."Minimum Efficiency") { ApplicationArea = All; Visible = false; }
                field("Calendar Rounding Precision"; Rec."Calendar Rounding Precision") { ApplicationArea = All; }
                field("Shop Calendar Code"; Rec."Shop Calendar Code") { ApplicationArea = All; }
                field(Blocked; Rec.Blocked) { ApplicationArea = All; }
                field("Unit Cost Calculation"; Rec."Unit Cost Calculation") { ApplicationArea = All; Visible = false; }
                field("Specific Unit Cost"; Rec."Specific Unit Cost") { ApplicationArea = All; Visible = false; }
                field("Flushing Method"; Rec."Flushing Method") { ApplicationArea = All; }
                field("Overhead Rate"; Rec."Overhead Rate") { ApplicationArea = All; }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group") { ApplicationArea = All; }
                field("Location Code"; Rec."Location Code") { ApplicationArea = All; }
            }
        }
    }
}
