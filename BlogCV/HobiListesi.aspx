﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HobiListesi.aspx.cs" Inherits="BlogCV.HobiListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>YETENEK</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval ("ID") %></th>
                            <td><%# Eval ("HOBI") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"HobiSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"HobiGuncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                            </td>
                        </tr>


                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
        <asp:HyperLink NavigateUrl="~/HobiEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">YENİ HOBİ EKLE</asp:HyperLink>
    </form>
</asp:Content>
