codeunit 71994810 "WD Production Plus Mgt"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Mfg. Calculate BOM Tree", 'OnAfterTransferFromProdItem', '', false, false)]
    local procedure OnAfterTransferFromProdItem(var BOMBuffer: Record "BOM Buffer"; ProdBOMLine: Record "Production BOM Line"; var EntryNo: Integer)
    begin
        BOMBuffer."WD BOM Type" := ProdBOMLine.Type;
        BOMBuffer."WD Routing Link Code" := ProdBOMLine."Routing Link Code";
        BOMBuffer."WD Scrap %" := ProdBOMLine."Scrap %";
        BOMBuffer."WD Quantity per" := ProdBOMLine."Quantity per";
        BOMBuffer."WD BOM Status" := '';
        BOMBuffer."WD Rout. Plan Status" := '';
        BOMBuffer."WD Last Date Modified" := DT2Date(ProdBOMLine.SystemModifiedAt);
        BomBuffer.Modify;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Mfg. Calculate BOM Tree", 'OnAfterTransferFromProdRouting', '', false, false)]
    local procedure OnAfterTransferFromProdRouting(var BOMBuffer: Record "BOM Buffer"; var RoutingLine: Record "Routing Line")
    begin
        BOMBuffer."WD Routing Link Code" := RoutingLine."Routing Link Code";
        BOMBuffer."WD Operation No." := RoutingLine."Operation No.";
        BOMBuffer."WD Next Operation No." := RoutingLine."Next Operation No.";
        BOMBuffer."WD Previous Operation No." := RoutingLine."Previous Operation No.";
        BOMBuffer."WD Setup Time" := RoutingLine."Setup Time";
        BOMBuffer."WD Run Time" := RoutingLine."Run Time";
        BOMBuffer."WD Wait Time" := RoutingLine."Wait Time";
        BOMBuffer."WD Move Time" := RoutingLine."Move Time";
        BOMBuffer."WD Fixed Scrap Quantity" := RoutingLine."Fixed Scrap Quantity";
        BOMBuffer."WD Scrap Factor %" := RoutingLine."Scrap Factor %";
        BOMBuffer."WD Concurrent Capacities" := RoutingLine."Concurrent Capacities";
        BOMBuffer."WD Send-Ahead Quantity" := RoutingLine."Send-Ahead Quantity";
        BOMBuffer."WD Unit Cost per" := RoutingLine."Unit Cost per";
        BOMBuffer."WD Last Date Modified" := DT2Date(RoutingLine.SystemModifiedAt);
        BOMBuffer."Replenishment System" := BOMBuffer."Replenishment System"::" ";
        BOMBuffer."WD BOM Status" := '';
        BOMBuffer."WD Rout. Plan Status" := '';
        BOMBuffer."WD Quantity per" := BOMBuffer."Qty. per Parent";
        BOMBuffer.Modify;
    end;

    procedure SetBOMHeaderUnderDevelopment(ProductionBOMNo: Code[20])
    var
        ProductionBOMHeader: Record "Production BOM Header";
    begin
        if ProductionBOMNo = '' then
            exit;

        if not ProductionBOMHeader.Get(ProductionBOMNo) then
            exit;

        if ProductionBOMHeader.Status <> ProductionBOMHeader.Status::"Under Development" then begin
            ProductionBOMHeader.Status := ProductionBOMHeader.Status::"Under Development";
            ProductionBOMHeader.Modify(true);
        end;
    end;

    procedure SetBOMHeaderCertified(ProductionBOMNo: Code[20])
    var
        ProductionBOMHeader: Record "Production BOM Header";
    begin
        if ProductionBOMNo = '' then
            exit;

        if not ProductionBOMHeader.Get(ProductionBOMNo) then
            exit;

        if ProductionBOMHeader.Status <> ProductionBOMHeader.Status::Certified then begin
            ProductionBOMHeader.Status := ProductionBOMHeader.Status::Certified;
            ProductionBOMHeader.Modify(true);
        end;
    end;

    procedure SetRoutingHeaderUnderDevelopment(RoutingNo: Code[20])
    var
        RoutingHeader: Record "Routing Header";
    begin
        if RoutingNo = '' then
            exit;

        if not RoutingHeader.Get(RoutingNo) then
            exit;

        if RoutingHeader.Status <> RoutingHeader.Status::"Under Development" then begin
            RoutingHeader.Status := RoutingHeader.Status::"Under Development";
            RoutingHeader.Modify(true);
        end;
    end;

    procedure SetRoutingHeaderCertified(RoutingNo: Code[20])
    var
        RoutingHeader: Record "Routing Header";
    begin
        if RoutingNo = '' then
            exit;

        if not RoutingHeader.Get(RoutingNo) then
            exit;

        if RoutingHeader.Status <> RoutingHeader.Status::Certified then begin
            RoutingHeader.Status := RoutingHeader.Status::Certified;
            RoutingHeader.Modify(true);
        end;
    end;
}
