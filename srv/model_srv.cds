using bicycles from '../db/model';

service Orders_Service {

    entity Orders_Header as projection on bicycles.Order_header;
    entity Orders_Item   as projection on bicycles.Order_item;
    entity Adress        as projection on bicycles.Address;
    entity Partner       as projection on bicycles.Partner;
    entity Products      as projection on bicycles.Products;

}


