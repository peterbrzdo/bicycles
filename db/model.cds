using {
    Currency,
    managed,
    sap
} from '@sap/cds/common';

namespace bicycles;

entity Products : managed {
    key productid          : String(10);
        typecode           : String(2);
        prodcategoryid     : String(2);
        supplier_partnerid : Association to Partner;
        taxtariffcode      : Integer;
        quantityunit       : String(2);
        weightmeasure      : Decimal(9, 2);
        weightunit         : String(2);
        currency           : String(3);
        price              : Decimal(9, 2);
}

entity Order_header : managed {
    key salesorderid     : Integer;
        fiscalyearperiod : String(7);
        partnerid        : Association to Partner;
        salesorg         : String(10);
        currency         : String(3);
        grossamount      : Decimal(9, 2);
        items            : Composition of many Order_item
                               on items.salesorderid = $self;
}

entity Order_item : managed {
    key salesorderid   : Association to Order_header;
    key salesorderitem : Integer;
        productid      : Association to Products;
        noteid         : Integer;
        currency       : String(3);
        grossamount    : Decimal(9, 2);
}

entity Partner : managed {
    key partnerid    : Integer;
        partnerrole  : Integer;
        emailaddress : String;
        addressid    : Association to Address;
}

entity Address {
    key addressid : Integer;
        city      : String;
        latitude  : Integer;
        longitude : Integer;
}


