<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="EntityFrameWork22_1.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>

        @media (min-width: 1025px) {
.h-custom {
height: 100vh !important;
}
}
    </style>
</head>
<body  style="background-color: #8fc4b7;">
    <form id="form1" runat="server">
        <div>
            <section class="h-100 h-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo"/>
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Update Info</h3>

            <div class="px-md-2">

              <div class="form-outline mb-4">
                    <label class="form-label" for="name">Name</label>
                <input type="text" id="name" class="form-control" runat="server"/>
              
              </div>

                 <div class="form-outline mb-4">
                      <label class="form-label" for="age">Age</label>
                <input type="text" id="age" class="form-control" runat="server" typeof="number"/>
               
              </div>

                  <div class="form-outline mb-4">
                      <label class="form-label" for="phone">Phone</label>
                <input type="text" id="phone" class="form-control" runat="server"/>
               
              </div>
                  <div class="form-outline mb-4">
                      <label class="form-label" for="Email">Email</label>     
                <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
              </div>
                   <div class="form-outline mb-4">
                      <label class="form-label" for="photo">Image</label>  
                       <asp:Image ID="Image1" runat="server" />
              </div>
                   <div class="form-outline mb-4">
                      <label class="form-label" for="photo">Photo</label>  
                       <asp:FileUpload ID="FileUpload1" runat="server"  accept=".png,.jpg,.jpeg,.gif"/>
              </div>

                   <div class="form-outline mb-4">
                      <label class="form-label" for="Email">City</label>     
                       <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
              </div>

             <%-- <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline datepicker">
                    <input type="text" class="form-control" id="exampleDatepicker1" />
                    <label for="exampleDatepicker1" class="form-label">Select a date</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <select class="select">
                    <option value="1" disabled>Gender</option>
                    <option value="2">Female</option>
                    <option value="3">Male</option>
                    <option value="4">Other</option>
                  </select>

                </div>
              </div>--%>

            <%--  <div class="mb-4">

                <select class="select">
                  <option value="1" disabled>Class</option>
                  <option value="2">Class 1</option>
                  <option value="3">Class 2</option>
                  <option value="4">Class 3</option>
                </select>

              </div>--%>

            <%--  <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
                <div class="col-md-6">

                  <div class="form-outline">
                    <input type="text" id="form3Example1w" class="form-control" />
                    <label class="form-label" for="form3Example1w">Registration code</label>
                  </div>

                </div>
              </div>--%>

                <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success btn-lg mb-1" OnClick="Button1_Click" />

              <%--<button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>--%>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>



             


             
        </div>




    </form>
</body>
</html>
