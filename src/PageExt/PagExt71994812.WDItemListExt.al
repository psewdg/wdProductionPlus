pageextension 71994812 "WD Item List Ext" extends "Item List"
{
    actions
    {
        addafter(Structure)
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

        addafter(Structure_Promoted)
        {
            actionref(WDProductionPlus_Promoted; "WD Production Plus")
            {
            }
        }
    }
}
