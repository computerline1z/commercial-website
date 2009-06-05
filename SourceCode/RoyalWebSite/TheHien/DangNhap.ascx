<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangNhap.ascx.cs" Inherits="The_hien_DangNhap" %>
<%@ Register Src="ChuaDangNhap.ascx" TagName="ChuaDangNhap" TagPrefix="uc1" %>
<%@ Register Src="DaDangNhap.ascx" TagName="DaDangNhap" TagPrefix="uc2" %>
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Panel ID="Panel1" runat="server" Height="50px"
    Width="125px">
    <table id="TABLE1" cellspacing="0" style="width: 200px; border-top-style: inset;
        border-right-style: inset; border-left-style: inset; border-bottom-style: inset">
        <tr>
            <td align="center" bgcolor="#0000ff" style="font-weight: bold; width: 222px; color: #ffffff;
                height: 21px">
                Đăng Nhập</td>
        </tr>
        <tr>
            <td align="center" style="font-size: 12px; width: 222px; color: navy; height: 114px">
                <br />
                <table>
                    <tr>
                        <td style="height: 21px; width: 67px;">
                            Username:</td>
                        <td style="width: 91px; height: 21px">
                            <asp:TextBox ID="txtUser" runat="server" Width="96px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 21px; width: 67px;">
                            Password:</td>
                        <td style="width: 91px; height: 21px;" runat="server">
                            <input id="txtPass" runat="server" style="width: 96px" type="password" /></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Đăng nhập" /></td>
        </tr>
    </table>
</asp:Panel>
&nbsp;
<asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px">
    <table cellspacing="0" style="width: 200px; border-top-style: inset; border-right-style: inset;
        border-left-style: inset; height: 80px; border-bottom-style: inset">
        <tr>
            <td align="center" bgcolor="#0000ff" style="font-weight: bold; width: 192px; color: #ffffff;
                height: 21px">
                Đăng Nhập</td>
        </tr>
        <tr>
            <td align="left" style="width: 192px; height: 51px">
                Xin chào bạn &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>!!<br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server">Thoát</asp:LinkButton></td>
        </tr>
    </table>
</asp:Panel>
<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black"
    Text="Bạn được dùng các chức năng quản trị:" Width="200px" Visible="False"></asp:Label><br />
<br />
<asp:Panel ID="Panel3" runat="server" Height="50px" Width="125px">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2"
        Font-Names="Verdana" Font-Size="0.9em" ForeColor="#990000" StaticSubMenuIndent="10px"
        Visible="False" Width="200px">
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <StaticSelectedStyle BackColor="#FFCC66" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <Items>
            <asp:MenuItem Text="User" Value="User">
                <asp:MenuItem NavigateUrl="~/Trang/User_Sua.aspx" Text="Sửa" Value="Sửa"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Trang/User_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Th&#244;ng tin" Value="Th&#244;ng tin">
                <asp:MenuItem NavigateUrl="~/Trang/ThongTin_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Trang/ThongTin_Sua.aspx" Text="Sửa" Value="Sửa"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Th&#237; sinh" Value="Th&#237; sinh">
                <asp:MenuItem NavigateUrl="~/Trang/ThiSinh_Sua.aspx" Text="Sửa" Value="Sửa"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Trang/ThiSinh_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Trường" Value="Trường">
                <asp:MenuItem NavigateUrl="~/Trang/Truong_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Trang/Truong_Sua.aspx" Text="Sửa" Value="Sửa"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Kết quả thi" Value="Kết quả">
                <asp:MenuItem NavigateUrl="~/Trang/KetQua_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Điểm chuẩn" Value="Điểm chuẩn">
                <asp:MenuItem NavigateUrl="~/Trang/DiemChuan_Them.aspx" Text="Th&#234;m" Value="Th&#234;m">
                </asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
    </asp:Menu>
</asp:Panel>
