using Orders_Service as service from '../../srv/model_srv';


annotate service.Orders_Header with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : salesorderid,            
            Label : 'Order ID',            
        },
        {
            $Type : 'UI.DataField',
            Value : salesorg,
            Label : 'Sales org.',
        },
        {
            $Type : 'UI.DataField',
            Value : fiscalyearperiod,
            Label : 'FIscal period',
        },
        {
            $Type : 'UI.DataField',
            Value : partnerid.partnerid,
            Label : 'Business Partner',
        },
        {
            $Type : 'UI.DataField',
            Value : partnerid.emailaddress,
            Label : 'Email',
        },
        {
            $Type : 'UI.DataField',
            Value : grossamount,
            Label : 'Order amount',
        },
       
    ]
);
annotate service.Orders_Header with {
    grossamount @Measures.ISOCurrency : currency
};
annotate service.Orders_Header with @(
    UI.SelectionFields : [
        salesorderid,       
        partnerid_partnerid,
        fiscalyearperiod,
    ]
);
annotate service.Orders_Item with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : salesorderitem,
            Label : 'Item',
        },
        {
            $Type : 'UI.DataField',
            Value : productid_productid,
            Label : 'Product ',
        },
        {
            $Type : 'UI.DataField',
            Value : grossamount,
            Label : 'Amount',
        },
    ]
);
