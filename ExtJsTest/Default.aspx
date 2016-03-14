<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExtJsTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>sfrgfdg</title>
    <link href="extjs/resource/css/theme-neptune-all.css" rel="stylesheet" />
    <script src="extjs/ext-all.js"></script>
    <script src="extjs/theme-classic.js"></script>
    <script type="text/javascript" src='Script/hello_world.js'>
    </script>   
    <script>
        Ext.onReady(function() {
            Ext.Msg.alert('Hello', 'The DOM IS Ready');
            var myDiv1 = Ext.get('div1');
            //myDiv1.setHeight(200);
            myDiv1.setSize(350, 350, { duration: 1, easing: 'bounceOut' });
            myDiv1.createChild('Child from a string');
            myDiv1.createChild({
                tag      : 'div',
                id       : 'nestedDiv',
                style    : 'border: 1px dashed; padding: 5px;',
                children : {
                    tag    : 'div',
                    html   : '...a nested div',
                    style: 'color: #EE0000; border: 1px solid'
                }
            });
            myDiv1.insertFirst({
                tag: 'div',
                html: 'Child inserted as node 0 of myDiv1'
            });
            myDiv1.createChild({
                tag: 'div',
                id: 'removeMeLater',
                html: 'Child inserted as node 2 of myDiv1'
            }, myDiv1.dom.childNodes[3]);
        })
        //Ext.onReady(function () {
        //    Ext.create('Ext.window.Window', {
        //        height: 125,
        //        width: 200,
        //        closable: false,
        //        title: 'Input needed.',
        //        border: false,
        //        layout: 'fit',
        //        items: formPanel
        //    }).show();
        //});

    </script>
    
    <style type="text/css">
     .myDiv {
         border: 1px solid #AAAAAA; 
         width: 200px; 
         height: 35px;
         cursor: pointer;
         padding: 2px 2px 2px 2px;
         margin: 2px 2px 2px 2px;
     }
 </style>
 <div id='div1' class='myDiv'> </div>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
