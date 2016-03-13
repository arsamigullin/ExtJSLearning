var tpl = Ext.create('Ext.Template', [          
    'Hello {firstName} {lastName}!',
    ' Nice to meet you!'
]);
var formPanel = Ext.create('Ext.form.FormPanel', {   
    itemId      : 'formPanel',
    frame       : true,
    layout      : 'anchor',
    defaultType : 'textfield',
    defaults    : {
        anchor     : '-10',
        labelWidth : 65
    },
    items       : [                           
        {
            fieldLabel : 'First name',
            name       : 'firstName'
        },
        {
            fieldLabel : 'Last name',
            name       : 'lastName'
        }
    ],
    buttons : [ 
        {
            text    : 'Submit',                            
            handler : function() {
                var formPanel = this.up('#formPanel'),
                    vals      = formPanel.getValues(),
                    greeting  = tpl.apply(vals);
                Ext.Msg.alert('Hello!', greeting);    
            }
        }
    ]
});