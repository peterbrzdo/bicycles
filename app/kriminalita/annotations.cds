using crime_data as service from '../../srv/model_srv';

annotate service.Statistika with @(UI.LineItem: [
    {
        $Type : 'UI.DataField',
        Value : tsk_tsk,
    },
    {
        $Type : 'UI.DataField',
        Value : kraj_kraj,
    },
    {
        $Type: 'UI.DataField',
        Value: mesto,
        Label: 'Mesto',
    },
    {
        $Type: 'UI.DataField',
        Value: zistene,
        Label: 'Zistené TČ',
        ![@UI.Importance] : #Medium,
    },
    {
        $Type: 'UI.DataField',
        Value:  skoda,
        Label: 'Výška škody',
    },   

]);

annotate service.Statistika with {
    zistene @Aggregation.default: #SUM
}

annotate service.Statistika with {
    skoda @Measures.ISOCurrency: currency
};

annotate service.Statistika with @(UI.SelectionFields: [    
    mesto,
    kraj_kraj,
    tsk_tsk,
]);

annotate service.Statistika with {
    tsk @Common.Label : 'TŠK'
};
annotate service.Statistika with {
    kraj @Common.Label : 'Kraj'
};
annotate service.Statistika with {
    mesto @Common.Label : 'Mesto'
};
annotate service.Statistika with {
    tsk @Common.Text : tsk.description
};
annotate service.Statistika with {
    kraj @Common.Text : kraj.description
};
annotate service.Statistika with {
    tsk @UI.MultiLineText : true
};
annotate service.Statistika with {
    kraj @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Kraj',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : kraj_kraj,
                    ValueListProperty : 'kraj',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Kraj with {
    kraj @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextOnly,
    }
};

annotate service.Kraj with @(UI.LineItem: [
 
    {
        $Type: 'UI.DataField',
        Value: kraj,
        Label: 'Kraj',
    },
    {
        $Type            : 'UI.DataField',
        Value            : zistene,
        Label            : 'Zistené TČ',
        ![@UI.Importance]: #Medium,
    },
    {
        $Type: 'UI.DataField',
        Value: skoda,
        Label: 'Výška škody',
    },

]);

annotate service.Statistika with {
    tsk @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Tsk',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : tsk_tsk,
                    ValueListProperty : 'tsk',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Tsk with {
    tsk @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
