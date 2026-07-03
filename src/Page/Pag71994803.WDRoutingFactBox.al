page 71994803 "WD Routing FactBox"
{
    PageType = CardPart;
    SourceTable = "Routing Header";
    ApplicationArea = All;
    Caption = 'Routing FactBox';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field("Description 2"; Rec."Description 2") { ApplicationArea = All; }
                field("Search Description"; Rec."Search Description") { ApplicationArea = All; }
                field("Last Date Modified"; Rec."Last Date Modified") { ApplicationArea = All; }
                field(Comment; Rec.Comment) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
                field(Type; Rec.Type) { ApplicationArea = All; }
                field("Version Nos."; Rec."Version Nos.") { ApplicationArea = All; }
            }
        }
    }
}
