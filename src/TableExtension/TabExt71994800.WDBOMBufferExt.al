tableextension 71994800 "WD BOM Buffer Ext" extends "BOM Buffer"
{
    fields
    {
        //field(71994800; "WD BOM Status"; Enum "BOM Status")
        field(71994800; "WD BOM Status"; Text[30])
        {
            Caption = 'BOM Status';
            DataClassification = CustomerContent;
        }
        field(71994801; "WD Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
        }
        field(71994802; "WD BOM Type"; Enum "Production BOM Line Type")
        {
            Caption = 'BOM Type';
            DataClassification = CustomerContent;
        }
        field(71994803; "WD Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            DataClassification = CustomerContent;
        }
        field(71994804; "WD Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DataClassification = CustomerContent;
            BlankZero = true;
        }
        field(71994806; "WD Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 5;
        }
        field(71994807; "WD Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            DataClassification = CustomerContent;
        }
        field(71994808; "WD Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
            DataClassification = CustomerContent;
        }
        field(71994809; "WD Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
            DataClassification = CustomerContent;
        }
        field(71994810; "WD Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994811; "WD Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994812; "WD Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994813; "WD Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994814; "WD Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Fixed Scrap Quantity';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994815; "WD Scrap Factor %"; Decimal)
        {
            Caption = 'Scrap Factor %';
            DataClassification = CustomerContent;
            BlankZero = true;
            decimalPlaces = 0 : 2;
        }
        field(71994816; "WD Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
            DataClassification = CustomerContent;
            BlankZero = true;
        }
        field(71994817; "WD Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Send-Ahead Quantity';
            DataClassification = CustomerContent;
            BlankZero = true;
        }
        field(71994818; "WD Unit Cost per"; Decimal)
        {
            Caption = 'Unit Cost per';
            DataClassification = CustomerContent;
            BlankZero = true;
        }
        field(71994819; "WD Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            DataClassification = CustomerContent;
            TableRelation = "Routing Header";
        }
        field(71994820; "WD Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            DataClassification = CustomerContent;
            TableRelation = "Production BOM Header";
        }
        field(71994821; "WD Rout. Plan Status"; Text[30])
        {
            Caption = 'Routing Status';
            DataClassification = CustomerContent;
        }
    }
}
