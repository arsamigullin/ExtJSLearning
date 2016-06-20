function XTemplatesTest() {
    // array of some objects
    var tplData = [{
        color: "#FFE9E9",
        name: 'Naomi White',
        age: 25,
        dob: '03/17/84',
        cars: ['Jetta', 'Camry', 'S2000']
    }, {
        color: "#E9E9FF",
        name: 'John Smith',
        age: 20,
        dob: '10/20/89',
        cars: ['Civic', 'Accord', 'Camry']
    }];
    var myTpl = Ext.create('Ext.XTemplate', [
    '<tpl for=".">',
        '<div style="background-color: {color}; margin: 10px;">',
            '<b> Name :</b> {name}<br />',
            '<b> Age :</b> {age}<br />',
            '<b> DOB :</b> {dob}<br />',
        '</div>',
    '</tpl>'
    ]);

    myTpl.compile();

    myTpl.append(document.body, tplData);
}

function AdvancedXTemplateTest() {
    var tplData = [{
        color: "#FFE9E9",
        name: 'Naomi White',
        age: 25,
        dob: '03/17/84',
        cars: ['Jetta', 'Camry', 'S2000']
    }, {
        color: "#E9E9FF",
        name: 'John Smith',
        age: 20,
        dob: '10/20/89',
        cars: ['Civic', 'Accord', 'Camry']
    }];
    var myTpl = Ext.create('Ext.XTemplate', [
        '<tpl for=".">',
            '<div style="background-color: {color}; margin: 10px;">',
                '<b> Name :</b> {name}<br />',
                '<b> Age :</b> {age}<br />',
                '<b> DOB :</b> {dob}<br />',
                '<b> Cars : </b>',
                    '<tpl for="cars">',
                        '{.}',
                            '<tpl if="this.isCamry(values)">',
                                '<b> (same car)</b>',
                            '</tpl>',
                        '{[ (xindex < xcount) ? ", " : "" ]}',
                     '</tpl>',
                    '<br />',
             '</div>',
        '</tpl>',
        {
            isCamry: function(car) {
                return car === 'Camry';
            }
        }
    ]);
    myTpl.compile();
    myTpl.append(document.body, tplData);
}