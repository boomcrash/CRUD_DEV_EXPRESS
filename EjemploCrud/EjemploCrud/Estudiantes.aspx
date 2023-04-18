<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="EjemploCrud.Estudiantes" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="miGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlEstudiante" Width="100%" KeyFieldName="OIDAlumno">
                <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

                <SettingsBehavior AllowFocusedRow="True" ConfirmDelete="True"></SettingsBehavior>
                <SettingsPopup>
                    <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
                </SettingsPopup>
                <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="OIDAlumno" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="4"></dx:GridViewDataTextColumn>
                </Columns>
                <Toolbars>
                    <dx:GridViewToolbar ItemAlign="Right">
                        <Items>
                            <dx:GridViewToolbarItem Command="New" Name="Nuevo" ToolTip="Nuevo" BeginGroup="True"></dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="Edit" Name="Editar" Text="Editar"></dx:GridViewToolbarItem>
                            <dx:GridViewToolbarItem Command="Delete" Name="Eliminar" Text="Eliminar"></dx:GridViewToolbarItem>
                        </Items>
                    </dx:GridViewToolbar>
                </Toolbars>
            </dx:ASPxGridView>
            <asp:SqlDataSource runat="server" ID="SqlEstudiante" ConnectionString='<%$ ConnectionStrings:miConexionEscuela %>' SelectCommand="SELECT [OIDAlumno], [Nombre], [Apellido], [Telefono] FROM [tblAlumnos]" InsertCommand="INSERT INTO [dbo].[tblAlumnos]
           ([Nombre]
           ,[Apellido]
           ,[Telefono])
     VALUES
           (@Nombre
           ,@Apellido
           ,@Telefono);"
                DeleteCommand="DELETE FROM [dbo].[tblAlumnos]
WHERE [OIDAlumno] = @OIDAlumno;"
                UpdateCommand="UPDATE [dbo].[tblAlumnos]
SET [Nombre] = @Nombre,
    [Apellido] = @Apellido,
    [Telefono] = @Telefono
WHERE [OIDAlumno] = @OIDAlumno;">
                <DeleteParameters>
                    <asp:Parameter Name="OIDAlumno"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nombre"></asp:Parameter>
                    <asp:Parameter Name="Apellido"></asp:Parameter>
                    <asp:Parameter Name="Telefono"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre"></asp:Parameter>
                    <asp:Parameter Name="Apellido"></asp:Parameter>
                    <asp:Parameter Name="Telefono"></asp:Parameter>
                    <asp:Parameter Name="OIDAlumno"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
