var panel1 = {
    html: 'I am a panel 1',
    id: 'panel1',
    frame: true,
    height: 100
};
var panel2 = {
    html: '<b>I am panel2</b>',
    id: 'panel2',
    frame: true
};
var myWin = Ext.create('Ext.window.Window', {
    id: 'myWin',
    height: 400,
    width: 400,
    items:
    [
        panel1,
        panel2
    ]
});
var addPanel = function() {
    Ext.getCmp('myWin').add({
        title: 'Appended Panel',
        id: 'addedPanel',
        html: 'Hello there'
    });
};