permissionset 71994800 wdProductionPlus_SU
{
    Assignable = true;
    Caption = 'wd Production Plus SUPER';
    Permissions = codeunit "WD Production Plus Mgt" = X,
        page InsertBOMLine = X,
        page InsertRoutingLine = X,
        page "WD BOM FactBox" = X,
        page "WD Item FactBox" = X,
        page "WD Machine Center FactBox" = X,
        page "WD Production Plus" = X,
        page "WD Routing FactBox" = X,
        page "WD Work Center FactBox" = X;
}