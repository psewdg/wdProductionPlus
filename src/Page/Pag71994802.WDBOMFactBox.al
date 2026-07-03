page 71994802 "WD BOM FactBox"
{
    PageType = CardPart;
    SourceTable = "Production BOM Header";
    ApplicationArea = All;
    Caption = 'BOM FactBox';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Description 2"; Rec."Description 2") { ApplicationArea = All; }
                field("Search Name"; Rec."Search Name") { ApplicationArea = All; }
                field("Creation Date"; Rec."Creation Date") { ApplicationArea = All; }
                field("Low-Level Code"; Rec."Low-Level Code") { ApplicationArea = All; }
                field(Comment; Rec.Comment) { ApplicationArea = All; }
                field("Version Nos."; Rec."Version Nos.") { ApplicationArea = All; }
            }
        }
    }
}
