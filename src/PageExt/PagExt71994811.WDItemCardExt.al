pageextension 71994811 "WD Item Card Ext" extends "Item Card"
{
    actions
    {
        addafter(BOMStructure)
        {
            action("WD Production Plus")
            {
                ApplicationArea = All;
                Caption = 'WD Production Plus';
                Image = Production;

                trigger OnAction()
                var
                    WDProductionPlus: Page "WD Production Plus";
                    ItemRec: Record Item;
                begin
                    ItemRec := Rec;
                    WDProductionPlus.InitItem(ItemRec);
                    WDProductionPlus.Run();
                end;
            }
        }
        addafter(BOMStructure_Promoted)
        {
            actionref(WDProductionPlus_Promoted; "WD Production Plus")
            {
            }
        }
    }
}
