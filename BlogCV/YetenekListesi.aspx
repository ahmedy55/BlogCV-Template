﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekListesi.aspx.cs" Inherits="BlogCV.YetenekListesi" %>

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
                            <td><%# Eval ("YETENEK") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"YetenekSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"YetenekGuncelle.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>


                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
        <asp:HyperLink NavigateUrl="~/YetenekEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">YETENEK EKLE</asp:HyperLink>
    </form>
</asp:Content>
