page 71994805 "InsertBOMLine"
{
    PageType = Card;
    SourceTable = "Production BOM Line";
    ApplicationArea = All;
    Caption = 'InsertBOMLine';
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type) { ApplicationArea = All; }
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Quantity per"; Rec."Quantity per") { ApplicationArea = All; }
                field("Unit of Measure Code"; Rec."Unit of Measure Code") { ApplicationArea = All; }
                //                field("Unit Cost"; UnitCost) { ApplicationArea = All; Editable = false; }
                //                field(Inventory; Inventory) { ApplicationArea = All; Editable = false; }
                field("Scrap %"; Rec."Scrap %") { ApplicationArea = All; }
                field("Routing Link Code"; Rec."Routing Link Code") { ApplicationArea = All; }
                field(Width; Rec.Width) { ApplicationArea = All; }
                field("Ending Date"; Rec."Ending Date") { ApplicationArea = All; }
                field("Calculation Formula"; Rec."Calculation Formula") { ApplicationArea = All; }
                field(Weight; Rec.Weight) { ApplicationArea = All; }
                field(Length; Rec.Length) { ApplicationArea = All; }
                field(Position; Rec.Position) { ApplicationArea = All; }
                field("Position 2"; Rec."Position 2") { ApplicationArea = All; }
                field("Position 3"; Rec."Position 3") { ApplicationArea = All; }
                field("Starting Date"; Rec."Starting Date") { ApplicationArea = All; }
                field(Depth; Rec.Depth) { ApplicationArea = All; }
                field("Variant Code"; Rec."Variant Code") { ApplicationArea = All; }
                field("Lead-Time Offset"; Rec."Lead-Time Offset") { ApplicationArea = All; }
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
                    WDProductionPlusMgt.SetBOMHeaderCertified(BOMNo);
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
        if BOMNo = '' then
            Error(Error01);
        Rec.SetRange("Production BOM No.", BOMNo);
        BOMHeader.Get(BOMNo);
        if not confirm(Text001, false) then
            CurrPage.Close();
        WDProductionPlusMgt.setBOMHeaderUnderDevelopment(BOMNo);

    end;

    trigger OnAfterGetRecord()
    begin
    end;

    procedure SetBOMNo(NewBOMNo: Code[20])
    begin
        BOMNo := NewBOMNo;
    end;

    var
        BOMNo: Code[20];
        BOMHeader: Record "Production BOM Header";
        Error01: Label 'Production BOM No. must be set.';
        Text001: Label 'Do you want to set the Production BOM Header to Status Under Development?';
        WDProductionPlusMgt: Codeunit "WD Production Plus Mgt";
}
