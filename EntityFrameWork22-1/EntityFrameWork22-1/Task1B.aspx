<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task1B.aspx.cs" Inherits="EntityFrameWork22_1.Task1B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table table-striped table-success" style="width:30%">
                <tr><td> <label class="form-label" for="Email">ID</label> </td> <td> <asp:TextBox ID="custid" runat="server" CssClass="form-control"></asp:TextBox></td></tr>
                <tr><td><label class="form-label" for="Email">Name</label>    </td> <td>  <asp:TextBox ID="namecust" runat="server" CssClass="form-control"></asp:TextBox></td></tr>

            </table>
            
            <br />
       
            <asp:Button ID="ss" runat="server" Text="Search" CssClass="btn btn-success" OnClick="ss_Click" />
            <br /><br />

         
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped">
                <Columns>
        <asp:ImageField DataImageUrlField="Photo"  ControlStyle-Width="50" ControlStyle-Height="50"/>
    </Columns>
              
            </asp:GridView>

            <br />
            <br />
            <asp:Label ID="co" runat="server" Text="Count = "></asp:Label><br />
            <asp:Label ID="avg" runat="server" Text="Average = "></asp:Label><br />
            <asp:Label ID="ma" runat="server" Text="Max = "></asp:Label>
        </div>
    </form>
</body>
</html>
