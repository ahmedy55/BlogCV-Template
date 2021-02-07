<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KonferansGuncelle.aspx.cs" Inherits="BlogCV.KonferasGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxtID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />       
            <div>
                <asp:Label ID="Label1" runat="server" Text="KONFERANS"></asp:Label>
                <asp:TextBox ID="TxtKonferans" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />              
            <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>
