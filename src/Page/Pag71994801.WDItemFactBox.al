page 71994801 "WD Item FactBox"
{
    PageType = CardPart;
    SourceTable = Item;
    ApplicationArea = All;
    Caption = 'Item FactBox';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field("No. 2"; Rec."No. 2") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Search Description"; Rec."Search Description") { ApplicationArea = All; }
                field("Description 2"; Rec."Description 2") { ApplicationArea = All; }
                field("Base Unit of Measure"; Rec."Base Unit of Measure") { ApplicationArea = All; }
                field(Type; Rec.Type) { ApplicationArea = All; }
                field("Inventory Posting Group"; Rec."Inventory Posting Group") { ApplicationArea = All; }
                field("Shelf No."; Rec."Shelf No.") { ApplicationArea = All; }
                field("Unit Price"; Rec."Unit Price") { ApplicationArea = All; Visible = false; }
                field("Price/Profit Calculation"; Rec."Price/Profit Calculation") { ApplicationArea = All; Visible = false; }
                field("Profit %"; Rec."Profit %") { ApplicationArea = All; Visible = false; }
                field("Costing Method"; Rec."Costing Method") { ApplicationArea = All; Visible = false; }
                field("Unit Cost"; Rec."Unit Cost") { ApplicationArea = All; }
                field("Standard Cost"; Rec."Standard Cost") { ApplicationArea = All; }
                field("Last Direct Cost"; Rec."Last Direct Cost") { ApplicationArea = All; Visible = false; }
                field("Indirect Cost %"; Rec."Indirect Cost %") { ApplicationArea = All; Visible = false; }
                field("Vendor No."; Rec."Vendor No.") { ApplicationArea = All; }
                field("Vendor Item No."; Rec."Vendor Item No.") { ApplicationArea = All; }
            }
        }
    }
}
