page 71994800 "WD Production Plus"
{
    Caption = 'WD Production Plus';
    DeleteAllowed = false;
    InsertAllowed = false;
    Editable = false;
    PageType = Worksheet;
    SourceTable = "BOM Buffer";
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            grid(Option)
            {
                Caption = 'Option';
                field(ItemFilter; ItemFilter)
                {
                    ApplicationArea = Assembly;
                    Caption = 'Item Filter';
                    ToolTip = 'Specifies the items that are shown in the BOM Structure window.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        Item: Record Item;
                        ItemList: Page "Item List";
                    begin
                        ItemList.SetTableView(Item);
                        ItemList.LookupMode := true;
                        if ItemList.RunModal() = Action::LookupOK then begin
                            ItemList.GetRecord(Item);
                            Text := Item."No.";
                            exit(true);
                        end;
                        exit(false);
                    end;

                    trigger OnValidate()
                    begin
                        RefreshPage();
                    end;
                }
            }
            repeater(Group)
            {
                Caption = 'Lines';
                IndentationColumn = Rec.Indentation;
                ShowAsTree = true;
                field(Type; Rec.Type)
                {
                    ApplicationArea = Assembly;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = Assembly;
                    Editable = false;
                    Style = Strong;
                    StyleExpr = IsParentExpr;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Assembly;
                    Editable = false;
                    Style = Strong;
                    StyleExpr = IsParentExpr;
                }
                field(HasWarning; HasWarning)
                {
                    ApplicationArea = Assembly;
                    BlankZero = true;
                    Caption = 'Warning';
                    Editable = false;
                    visible = false;
                    Style = Attention;
                    StyleExpr = HasWarning;
                    ToolTip = 'Specifies if the BOM line has setup or data issues.';

                    trigger OnDrillDown()
                    begin
                        if HasWarning then
                            ShowWarnings();
                    end;
                }
                field("Low-Level Code"; Rec."Low-Level Code")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = false;
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = Planning;
                    Visible = false;
                }
                field("WD Quantity per"; Rec."WD Quantity per")
                {
                    ApplicationArea = All;
                    Caption = 'Quantity per';
                }
                field("Qty. per Parent"; Rec."Qty. per Parent")
                {
                    ApplicationArea = Assembly;
                    DecimalPlaces = 0 : 5;
                    Editable = false;
                    Visible = false;
                }
                field("Qty. per Top Item"; Rec."Qty. per Top Item")
                {
                    ApplicationArea = Assembly;
                    DecimalPlaces = 0 : 5;
                    Editable = false;
                    Visible = false;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = Assembly;
                    Editable = false;
                }
                field("Replenishment System"; Rec."Replenishment System")
                {
                    ApplicationArea = Assembly;
                    Editable = false;
                }
                field("Lead-Time Offset"; Rec."Lead-Time Offset")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = false;
                }
                field("Safety Lead Time"; Rec."Safety Lead Time")
                {
                    ApplicationArea = Planning;
                    Visible = false;
                }
                field("Lead Time Calculation"; Rec."Lead Time Calculation")
                {
                    ApplicationArea = Basic, Suite;
                    Visible = false;
                }
                // WD>
                field("WD Production BOM No."; Rec."WD Production BOM No.")
                {
                    ApplicationArea = All;
                    Caption = 'Production BOM No.';
                }
                field("WD Routing No."; Rec."WD Routing No.")
                {
                    ApplicationArea = All;
                    Caption = 'Routing No.';
                }
                field("WD BOM Status"; Rec."WD BOM Status")
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                }
                field("WD Rout. Plan Status"; Rec."WD Rout. Plan Status")
                {
                    ApplicationArea = All;
                    Caption = 'Routing Status';
                }
                field("WD Last Date Modified"; Rec."WD Last Date Modified")
                {
                    ApplicationArea = All;
                    Caption = 'Last Date Modified';
                }
                field("WD BOM Type"; Rec."WD BOM Type")
                {
                    ApplicationArea = All;
                    Caption = 'BOM Type';
                    Visible = false;
                }
                field("WD Scrap %"; Rec."WD Scrap %")
                {
                    ApplicationArea = All;
                    Caption = 'Scrap %';
                    Visible = false;
                }
                field("WD Setup Time"; Rec."WD Setup Time")
                {
                    ApplicationArea = All;
                    Caption = 'Setup Time';
                }
                field("WD Run Time"; Rec."WD Run Time")
                {
                    ApplicationArea = All;
                    Caption = 'Run Time';
                }
                field("WD Wait Time"; Rec."WD Wait Time")
                {
                    ApplicationArea = All;
                    Caption = 'Wait Time';
                    Visible = false;
                }
                field("WD Move Time"; Rec."WD Move Time")
                {
                    ApplicationArea = All;
                    Caption = 'Move Time';
                    Visible = false;
                }
                field("WD Routing Link Code"; Rec."WD Routing Link Code")
                {
                    ApplicationArea = All;
                    Caption = 'Routing Link Code';
                }
                field("WD Operation No."; Rec."WD Operation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Operation No.';
                }
                field("WD Next Operation No."; Rec."WD Next Operation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Next Operation No.';
                }
                field("WD Previous Operation No."; Rec."WD Previous Operation No.")
                {
                    ApplicationArea = All;
                    Caption = 'Previous Operation No.';
                }
                field("WD Fixed Scrap Quantity"; Rec."WD Fixed Scrap Quantity")
                {
                    ApplicationArea = All;
                    Caption = 'Fixed Scrap Quantity';
                    Visible = false;
                }
                field("WD Scrap Factor %"; Rec."WD Scrap Factor %")
                {
                    ApplicationArea = All;
                    Caption = 'Scrap Factor %';
                    Visible = false;
                }
                field("WD Concurrent Capacities"; Rec."WD Concurrent Capacities")
                {
                    ApplicationArea = All;
                    Caption = 'Concurrent Capacities';
                    Visible = false;
                }
                field("WD Send-Ahead Quantity"; Rec."WD Send-Ahead Quantity")
                {
                    ApplicationArea = All;
                    Caption = 'Send-Ahead Quantity';
                    Visible = false;
                }
                field("WD Unit Cost per"; Rec."WD Unit Cost per")
                {
                    ApplicationArea = All;
                    Caption = 'Unit Cost per';
                    Visible = false;
                }
                // WD<
            }
        }
        // WD>
        area(FactBoxes)
        {
            part(ItemFactBox; "WD Item FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                //visible = Rec.Type = Rec.Type::Item;
                visible = true;
            }
            part(BOMFactBox; "WD BOM FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("WD Production BOM No.");
                visible = Rec.Type = Rec.Type::Item;
            }
            part(RoutingFactBox; "WD Routing FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("WD Routing No.");
                visible = Rec.Type = Rec.Type::Item;
            }
            part(WorkCenterFactBox; "WD Work Center FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                visible = Rec.Type = Rec.Type::"Work Center";
            }
            part(MachineCenterFactBox; "WD Machine Center FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                visible = Rec.Type = Rec.Type::"Machine Center";
            }
        }
        // WD<
    }

    actions
    {
        area(navigation)
        {
            group("&Item Availability by")
            {
                Caption = '&Item Availability by';
                Image = ItemAvailability;
                action("Event")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Event';
                    Image = "Event";
                    ToolTip = 'View how the actual and the projected available balance of an item will develop over time according to supply and demand events.';

                    trigger OnAction()
                    begin
                        ShowItemAvailability("Item Availability Type"::"Event");
                    end;
                }
                action(Period)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Period';
                    Image = Period;
                    ToolTip = 'View the projected quantity of the item over time according to time periods, such as day, week, or month.';

                    trigger OnAction()
                    begin
                        ShowItemAvailability("Item Availability Type"::Period);
                    end;
                }
                action(Variant)
                {
                    ApplicationArea = Planning;
                    Caption = 'Variant';
                    Image = ItemVariant;
                    ToolTip = 'View or edit the item''s variants. Instead of setting up each color of an item as a separate item, you can set up the various colors as variants of the item.';

                    trigger OnAction()
                    begin
                        ShowItemAvailability("Item Availability Type"::Variant);
                    end;
                }
                action(Location)
                {
                    AccessByPermission = TableData Location = R;
                    ApplicationArea = Location;
                    Caption = 'Location';
                    Image = Warehouse;
                    ToolTip = 'View the actual and projected quantity of the item per location.';

                    trigger OnAction()
                    begin
                        ShowItemAvailability("Item Availability Type"::Location);
                    end;
                }
                action(Lot)
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Lot';
                    Image = LotInfo;
                    RunObject = Page "Item Availability by Lot No.";
                    RunPageLink = "No." = field("No."),
                            "Location Filter" = field("Location Code"),
                            "Variant Filter" = field("Variant Code");
                    ToolTip = 'View the current and projected quantity of the item in each lot.';
                }
                action("BOM Level")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'BOM Level';
                    Image = BOMLevel;
                    ToolTip = 'View availability figures for items on bills of materials that show how many units of a parent item you can make based on the availability of child items.';

                    trigger OnAction()
                    begin
                        ShowItemAvailability("Item Availability Type"::BOM);
                    end;
                }
            }
        }
        area(processing)
        {
            action("Open Card")
            {
                ApplicationArea = All;
                Caption = 'Open Card';
                Image = EditLines;

                trigger OnAction()
                begin
                    OpenCardByType();
                end;
            }
            action("Open Production BOM")
            {
                ApplicationArea = All;
                Caption = 'Open Production BOM';
                Image = Production;

                trigger OnAction()
                begin
                    OpenProductionBOM();
                end;
            }
            action("Open Routing")
            {
                ApplicationArea = All;
                Caption = 'Open Routing';
                Image = Route;

                trigger OnAction()
                begin
                    OpenRouting();
                end;
            }
            action("Change Status")
            {
                ApplicationArea = All;
                Caption = 'Change Status';
                Image = ChangeStatus;

                trigger OnAction()
                begin
                    ChangeStatus();
                end;
            }
            action("Create BOM")
            {
                ApplicationArea = All;
                Caption = 'Create BOM';
                Image = New;

                trigger OnAction()
                begin
                    CreateBOM();
                end;
            }
            action("Create Routing Plan")
            {
                ApplicationArea = All;
                Caption = 'Create Routing Plan';
                Image = New;

                trigger OnAction()
                begin
                    CreateRoutingPlan();
                end;
            }
            action("Show Warnings")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Show Warnings';
                Image = ErrorLog;
                ToolTip = 'View details about bottlenecks.';

                trigger OnAction()
                begin
                    ShowWarningsForAllLines();
                end;
            }
            // WD>
            action("Refresh Structure")
            {
                ApplicationArea = All;
                Caption = 'Refresh Structure';
                Image = Refresh;

                trigger OnAction()
                begin
                    RefreshPage();
                    //CurrPage.Update(false);
                end;
            }
            action("Insert BOM Line")
            {
                ApplicationArea = All;
                Caption = 'Insert BOM Line';
                Image = New;

                trigger OnAction()
                var
                    InsertBOMLine: Page "InsertBOMLine";
                    locItem: Record Item;
                    Error01: Label 'Type must be Item';
                begin
                    if not locItem.Get(Rec."No.") then
                        Error(Error01);

                    InsertBOMLine.SetBOMNo(locItem."Production BOM No.");
                    InsertBOMLine.RunModal();
                    RefreshPage();
                    //CurrPage.Update(false);
                end;
            }
            action("Insert Routing Line")
            {
                ApplicationArea = All;
                Caption = 'Insert Routing Line';
                Image = New;

                trigger OnAction()
                var
                    InsertRoutingLine: Page "InsertRoutingLine";
                    locItem: Record Item;
                    Error01: Label 'Type must be Item';
                begin
                    if not locItem.Get(Rec."No.") then
                        Error(Error01);

                    InsertRoutingLine.SetRoutingNo(locItem."Routing No.");
                    InsertRoutingLine.RunModal();
                    RefreshPage();
                    //CurrPage.Update(false);
                end;
            }
            // WD<
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process', Comment = 'Generated from the PromotedActionCategories property index 1.';

                actionref("Open Card_Promoted"; "Open Card")
                {
                }
                actionref("Open Production BOM_Promoted"; "Open Production BOM")
                {
                }
                actionref("Open Routing_Promoted"; "Open Routing")
                {
                }
                actionref("Change Status_Promoted"; "Change Status")
                {
                }
                actionref("Refresh_Promoted"; "refresh Structure")
                {
                }
                actionref("Create BOM_Promoted"; "Create BOM")
                {
                }
                actionref("Create Routing Plan_Promoted"; "Create Routing Plan")
                {
                }
                actionref("Insert BOM Line_Promoted"; "Insert BOM Line")
                {
                }
                actionref("Insert Routing Line_Promoted"; "Insert Routing Line")
                {
                }
            }
            group(Category_Category4)
            {
                Caption = 'Item Availability by', Comment = 'Generated from the PromotedActionCategories property index 3.';

                actionref(Event_Promoted; "Event")
                {
                }
                actionref(Period_Promoted; Period)
                {
                }
                actionref(Variant_Promoted; Variant)
                {
                }
                actionref(Location_Promoted; Location)
                {
                }
                actionref(Lot_Promoted; Lot)
                {
                }
                actionref("BOM Level_Promoted"; "BOM Level")
                {
                }
            }
            group(Category_Report)
            {
                Caption = 'Report', Comment = 'Generated from the PromotedActionCategories property index 2.';
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        DummyBOMWarningLog: Record "BOM Warning Log";
    begin
        IsParentExpr := not Rec."Is Leaf";

        HasWarning := not Rec.IsLineOk(false, DummyBOMWarningLog);

        if Rec.Type = Rec.Type::Item then
            Rec."Low-Level Code" := Rec.Indentation;
        // WD>
        TransferExtendedFields();
        // WD<

    end;

    trigger OnOpenPage()
    begin
        RefreshPage();
    end;

    var
        Item: Record Item;
        SourceRecordVar: Variant;
        IsParentExpr: Boolean;
        HasWarning: Boolean;
        CouldNotFindBOMLevelsErr: Label 'Could not find items with BOM levels.';
#pragma warning disable AA0074
        Text001: Label 'There are no warnings.';
#pragma warning restore AA0074

    protected var
        ItemFilter: Code[250];
        ShowBy: Enum "BOM Structure Show By";

    procedure InitItem(var NewItem: Record Item)
    begin
        Item := NewItem;
        ItemFilter := Item."No.";
        ShowBy := ShowBy::Item;
    end;

    procedure InitSource(NewSourceRecordVar: Variant; NewShowBy: Enum "BOM Structure Show By")
    begin
        SourceRecordVar := NewSourceRecordVar;
        ShowBy := NewShowBy;
    end;

    procedure RefreshPage()
    var
        CalculateBOMTree: Codeunit "Calculate BOM Tree";
        RaiseError: Boolean;
        ErrorText: Text;
        IsHandled: Boolean;
        IsUpdatePageNeeded: Boolean;
    begin
        IsHandled := false;
        OnBeforeRefreshPage(Rec, Item, SourceRecordVar, ShowBy, ItemFilter, IsHandled);
        if IsHandled then
            exit;

        IsUpdatePageNeeded := Item."No." <> ItemFilter;

        Item.SetFilter("No.", ItemFilter);
        Item.SetRange("Date Filter", 0D, WorkDate());
        CalculateBOMTree.SetItemFilter(Item);
        case ShowBy of
            ShowBy::Item:
                begin
                    Item.FindFirst();
                    RaiseError := (not Item.HasBOM()) and (not Item.HasRoutingNo());
                    ErrorText := CouldNotFindBOMLevelsErr;
                    OnRefreshPageOnBeforeRaiseError(Item, RaiseError, ErrorText);
                    if RaiseError then
                        Error(ErrorText);
                    CalculateBOMTree.GenerateTreeForManyItems(Item, Rec, "BOM Tree Type"::" ");
                end;
            else
                CalculateBOMTree.GenerateTreeForSource(SourceRecordVar, Rec, "BOM Tree Type"::" ", ShowBy, WorkDate());
        end;

        if IsUpdatePageNeeded then
            CurrPage.Update(false);
    end;

    local procedure ShowWarnings()
    var
        TempBOMWarningLog: Record "BOM Warning Log" temporary;
    begin
        if Rec.IsLineOk(true, TempBOMWarningLog) then
            Message(Text001)
        else
            Page.RunModal(Page::"BOM Warning Log", TempBOMWarningLog);
    end;

    local procedure ShowWarningsForAllLines()
    var
        TempBOMWarningLog: Record "BOM Warning Log" temporary;
    begin
        if Rec.AreAllLinesOk(TempBOMWarningLog) then
            Message(Text001)
        else
            Page.RunModal(Page::"BOM Warning Log", TempBOMWarningLog);
    end;

    local procedure ShowItemAvailability(AvailType: Enum "Item Availability Type")
    var
        ItemForShowAvailability: Record Item;
        ItemAvailabilityFormsMgt: Codeunit "Item Availability Forms Mgt";
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemForShowAvailability.Get(Rec."No.");
        ItemForShowAvailability.SetRange("No.", Rec."No.");
        ItemForShowAvailability.SetRange("Date Filter", 0D, Rec."Needed by Date");
        ItemForShowAvailability.SetFilter("Variant Filter", Rec."Variant Code");
        if ShowBy <> ShowBy::Item then
            ItemForShowAvailability.SetFilter("Location Filter", Rec."Location Code");

        ItemAvailabilityFormsMgt.ShowItemAvailabilityFromItem(ItemForShowAvailability, AvailType);
    end;

    // WD>
    local procedure TransferExtendedFields()
    var
        ProductionBOMHeader: Record "Production BOM Header";
        ProductionBOMLine: Record "Production BOM Line";
        RoutingHeader: Record "Routing Header";
        RoutingLine: Record "Routing Line";
        locItem: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then begin
            if not locItem.Get(Rec."No.") then
                exit;
        end;
        case Rec.Type of
            Rec.Type::Item:
                begin
                    if ProductionBOMHeader.Get(locItem."Production BOM No.") then begin
                        Rec."WD BOM Status" := format(ProductionBOMHeader.Status);
                        Rec."WD Last Date Modified" := ProductionBOMHeader."Last Date Modified";
                        Rec."WD Production BOM No." := locItem."Production BOM No.";
                    end;
                    if RoutingHeader.Get(locItem."Routing No.") then begin
                        Rec."WD Rout. Plan Status" := format(RoutingHeader.Status);
                        Rec."WD Last Date Modified" := RoutingHeader."Last Date Modified";
                        Rec."WD Routing No." := locItem."Routing No.";
                    end;
                end;
        end;
    end;

    local procedure CreateBOM()
    var
        ManufacturingSetup: Record "Manufacturing Setup";
        ProductionBOMHeader: Record "Production BOM Header";
        ItemToUpdate: Record Item;
        NoSeries: Codeunit "No. Series";
        NewProductionBOMNo: Code[20];
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemToUpdate.Get(Rec."No.");
        ItemToUpdate.TestField("No.");

        if ItemToUpdate."Production BOM No." <> '' then
            Error('Artikel %1 hat bereits eine Fertigungsstueckliste %2.', ItemToUpdate."No.", ItemToUpdate."Production BOM No.");

        ManufacturingSetup.Get();
        ManufacturingSetup.TestField("Production BOM Nos.");

        NewProductionBOMNo := NoSeries.GetNextNo(ManufacturingSetup."Production BOM Nos.", WorkDate(), true);

        ProductionBOMHeader.Init();
        ProductionBOMHeader.Validate("No.", NewProductionBOMNo);
        ProductionBOMHeader.Validate(Description, ItemToUpdate.Description);
        ProductionBOMHeader.Validate("Unit of Measure Code", ItemToUpdate."Base Unit of Measure");
        ProductionBOMHeader.Insert(true);

        ItemToUpdate.Validate("Production BOM No.", ProductionBOMHeader."No.");
        ItemToUpdate.Modify(true);

        Commit();
        Page.RunModal(Page::"Production BOM", ProductionBOMHeader);
    end;

    local procedure CreateRoutingPlan()
    var
        ManufacturingSetup: Record "Manufacturing Setup";
        RoutingHeader: Record "Routing Header";
        ItemToUpdate: Record Item;
        NoSeries: Codeunit "No. Series";
        NewRoutingNo: Code[20];
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemToUpdate.Get(Rec."No.");
        ItemToUpdate.TestField("No.");

        if ItemToUpdate."Routing No." <> '' then
            Error('Artikel %1 hat bereits einen Arbeitsplan %2.', ItemToUpdate."No.", ItemToUpdate."Routing No.");

        ManufacturingSetup.Get();
        ManufacturingSetup.TestField("Routing Nos.");

        NewRoutingNo := NoSeries.GetNextNo(ManufacturingSetup."Routing Nos.", WorkDate(), true);

        RoutingHeader.Init();
        RoutingHeader.Validate("No.", NewRoutingNo);
        RoutingHeader.Validate(Description, ItemToUpdate.Description);
        RoutingHeader.Insert(true);

        ItemToUpdate.Validate("Routing No.", RoutingHeader."No.");
        ItemToUpdate.Modify(true);

        Commit();
        Page.RunModal(Page::Routing, RoutingHeader);
    end;

    local procedure OpenCardByType()
    var
        ItemRec: Record Item;
        ResourceRec: Record Resource;
        WorkCenterRec: Record "Work Center";
        MachineCenterRec: Record "Machine Center";
    begin
        Rec.TestField("No.");

        case Rec.Type of
            Rec.Type::Item:
                begin
                    ItemRec.Get(Rec."No.");
                    Page.RunModal(Page::"Item Card", ItemRec);
                end;
            Rec.Type::Resource:
                begin
                    ResourceRec.Get(Rec."No.");
                    Page.RunModal(Page::"Resource Card", ResourceRec);
                end;
            Rec.Type::"Work Center":
                begin
                    WorkCenterRec.Get(Rec."No.");
                    Page.RunModal(Page::"Work Center Card", WorkCenterRec);
                end;
            Rec.Type::"Machine Center":
                begin
                    MachineCenterRec.Get(Rec."No.");
                    Page.RunModal(Page::"Machine Center Card", MachineCenterRec);
                end;
            else
                Error('Fuer den Typ %1 ist kein Kartenaufruf verfuegbar.', Format(Rec.Type));
        end;
    end;

    local procedure OpenProductionBOM()
    var
        ItemRec: Record Item;
        ProductionBOMHeader: Record "Production BOM Header";
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemRec.Get(Rec."No.");
        ItemRec.TestField("Production BOM No.");

        ProductionBOMHeader.Get(ItemRec."Production BOM No.");
        Page.RunModal(Page::"Production BOM", ProductionBOMHeader);
    end;

    local procedure OpenRouting()
    var
        ItemRec: Record Item;
        RoutingHeader: Record "Routing Header";
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemRec.Get(Rec."No.");
        ItemRec.TestField("Routing No.");

        RoutingHeader.Get(ItemRec."Routing No.");
        Page.RunModal(Page::Routing, RoutingHeader);
    end;

    local procedure ChangeStatus()
    var
        ItemRec: Record Item;
        WDProductionPlusMgt: Codeunit "WD Production Plus Mgt";
        ObjectSelection: Integer;
        StatusSelection: Integer;
        SelectObjectLbl: Label 'Fertigungsstueckliste,Arbeitsplan';
        SelectObjectQst: Label 'Welchen Status moechten Sie aendern?';
        SelectStatusLbl: Label 'Under Development,Certified';
        SelectStatusQst: Label 'Auf welchen Status soll geaendert werden?';
    begin
        Rec.TestField(Type, Rec.Type::Item);

        ItemRec.Get(Rec."No.");

        ObjectSelection := StrMenu(SelectObjectLbl, 1, SelectObjectQst);
        if ObjectSelection = 0 then
            exit;

        StatusSelection := StrMenu(SelectStatusLbl, 1, SelectStatusQst);
        if StatusSelection = 0 then
            exit;

        case ObjectSelection of
            1:
                begin
                    ItemRec.TestField("Production BOM No.");
                    case StatusSelection of
                        1:
                            WDProductionPlusMgt.SetBOMHeaderUnderDevelopment(ItemRec."Production BOM No.");
                        2:
                            WDProductionPlusMgt.SetBOMHeaderCertified(ItemRec."Production BOM No.");
                    end;
                end;
            2:
                begin
                    ItemRec.TestField("Routing No.");
                    case StatusSelection of
                        1:
                            WDProductionPlusMgt.SetRoutingHeaderUnderDevelopment(ItemRec."Routing No.");
                        2:
                            WDProductionPlusMgt.SetRoutingHeaderCertified(ItemRec."Routing No.");
                    end;
                end;
        end;

        RefreshPage();
    end;
    // WD<

    [IntegrationEvent(false, false)]
    local procedure OnBeforeRefreshPage(var BOMBuffer: Record "BOM Buffer"; var Item: Record Item; var SourceRecordVar: Variant; ShowBy: Enum "BOM Structure Show By"; ItemFilter: Code[250]; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnRefreshPageOnBeforeRaiseError(var Item: Record Item; var RaiseError: Boolean; var ErrorText: Text)
    begin
    end;
}
