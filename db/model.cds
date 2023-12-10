using {
    Currency,
    managed,
    sap
} from '@sap/cds/common';

namespace kriminalita;

entity Statistika {
    key id        : Integer;
        tsk       : Association to Tsk;
        kraj      : Association to Kraj;
        mesto     : String(30);
        zistene   : Integer;
        objasnene : Integer;
        skoda     : Decimal(9, 2);
        currency  : String(3);
}

entity Kraj {
    key kraj : String(30);
    description : String(30);
    zistene     : Integer;
    objasnene   : Integer;
    skoda       : Decimal(9, 2);
    currency    : String(3);
    lon         : String(10);
    lat         : String(10);
}

entity Tsk {
    key tsk : String(30);
    description : String(30);
}







