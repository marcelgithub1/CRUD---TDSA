<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crud._Default" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center">
            <br />
            Formulario de Gerenciamento de Informação do Estudante</div>
        <table class="nav-justified">
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">ID do Estudante</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Font-Size="Medium" Width="439px" style="margin-left: 1px"></asp:TextBox>
                &nbsp;<asp:Button ID="Button5" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button5_Click" Text="Buscar por ID" />
                </td>                
            </tr>
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">Nome do Estudante</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox2_TextChanged" Font-Size="Medium" Width="441px"></asp:TextBox>
                &nbsp;<asp:Button ID="Button6" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button6_Click" Text="Buscar por Nome" />
                </td>
            </tr>
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">Endereço</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>São Paulo</asp:ListItem>
                        <asp:ListItem>Rio de Janeiro</asp:ListItem>
                        <asp:ListItem>Minas Gerais</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 360px; height: 22px;"></td>
                <td style="width: 189px; height: 22px;">Idade</td>
                <td style="height: 22px">

                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox2_TextChanged" Font-Size="Medium" Width="439px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">Contato</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox2_TextChanged" Font-Size="Medium" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 360px" class="modal-sm">&nbsp;</td>
                <td style="width: 189px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="nav-justified">
            <tr>
                <td style="width: 100px">&nbsp;</td>
                <td style="width: 189px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Adicionar Estudante" />
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Atualizar Dados do Aluno" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Excluir Aluno" />
                &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#6600FF" BorderColor="Silver" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Procurar Aluno" />
                </td>
            </tr>
        </table>
        <table class="nav-justified">
            <tr>
                <td style="width: 155px">&nbsp;</td>
                <td style="width: 189px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="nav-justified">
            <tr>
                <td style="width: 155px">&nbsp;</td>
                <td style="width: 189px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="705px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    </asp:GridView>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
        </table>
        </br>
    </div>

</asp:Content>
