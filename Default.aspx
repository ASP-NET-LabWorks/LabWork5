<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron py-1">
    <h1>Серверные HTML-элементы</h1>
    <asp:Table CssClass="table table-striped table-sm" ID="TableControls" runat="server">
        <asp:TableHeaderRow CssClass="thead-dark">
            <asp:TableHeaderCell ColumnSpan="2">Элемент</asp:TableHeaderCell>
            <asp:TableHeaderCell>OnServerClick</asp:TableHeaderCell>
            <asp:TableHeaderCell>OnServerChange</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>Input (Reset)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="btn btn-secondary btn-sm" id="Reset" type="reset" value="reset" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Button)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="btn btn-secondary btn-sm" id="Button" type="button" value="button" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Submit)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="btn btn-secondary btn-sm" id="Submit" type="submit" value="submit" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (File)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-control-file" id="File" type="file" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Text)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-control" id="Text" type="text" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Password)</asp:TableCell>
            <asp:TableCell>
                <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-control" id="Password" type="password" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Checkbox)</asp:TableCell>
            <asp:TableCell>
                <div class="form-check form-check-inline">
                        <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-check-input" id="Checkbox" type="checkbox" />
                        <label class="form-check-label" for="Checkbox">сheckbox</label>
                    </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Input (Radio)</asp:TableCell>
            <asp:TableCell>
                <div class="form-check form-check-inline">
                        <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-check-input" id="Radio1" type="radio" name="radio" checked />
                        <label class="form-check-label" for="Radio1">1</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-check-input" id="Radio2" type="radio" name="radio" />
                        <label class="form-check-label" for="Radio2">2</label>
                    </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Textarea</asp:TableCell>
            <asp:TableCell>
                <textarea onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-control" id="TextArea" rows="1"></textarea>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Select</asp:TableCell>
            <asp:TableCell>
                <select onserverclick="OnServerClick" onserverchange="OnServerChange" runat="server" class="form-control" id="Select">
                        <option selected>1</option>
                        <option>2</option>
                    </select>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</div>

</asp:Content>