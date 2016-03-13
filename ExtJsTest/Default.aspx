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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
