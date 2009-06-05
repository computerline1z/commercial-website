<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>

<%@ Register Src="../TheHien/DangNhap.ascx" TagName="DangNhap" TagPrefix="uc2" %>

<%@ Register Src="TheHien/DangNhap.ascx" TagName="DangNhap" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/Template1.dwt.aspx" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<style type="text/css"> 
<!-- 
body  {
	background: #666666;
	margin: 0; /* it's good practice to zero the margin and padding of the body element to account for differing browser defaults */
	padding: 0;
	text-align: center; /* this centers the container in IE 5* browsers. The text is then set to the left aligned default in the #container selector */
	color: #000000;
	font-family: "Times New Roman", Times, serif;
	font-size: 90%;
}

/* Tips for Elastic layouts 
1. Since the elastic layouts overall sizing is based on the user's default fonts size, they are more unpredictable. Used correctly, they are also more accessible for those that need larger fonts size since the line length remains proportionate.
2. Sizing of divs in this layout are based on the 100% font size in the body element. If you decrease the text size overall by using a font-size: 80% on the body element or the #container, remember that the entire layout will downsize proportionately. You may want to increase the widths of the various divs to compensate for this.
3. If font sizing is changed in differing amounts on each div instead of on the overall design (ie: #sidebar1 is given a 70% font size and #mainContent is given an 85% font size), this will proportionately change each of the divs overall size. You may want to adjust based on your final font sizing.
*/
.twoColElsLtHdr #container {
	width: 46em;  /* this width will create a container that will fit in an 800px browser window if text is left at browser default font sizes */
	background: #FFFFFF;
	margin: 0 auto; /* the auto margins (in conjunction with a width) center the page */
	border: 1px solid #000000;
	text-align: left; /* this overrides the text-align: center on the body element. */
	vertical-align: middle;
} 
.twoColElsLtHdr #header {
	padding: 0 10px;  /* this padding matches the left alignment of the elements in the divs that appear beneath it. If an image is used in the #header instead of text, you may want to remove the padding. */
	background-color: #DDDDDD;
	background-image: url("../Hinh anh/headerback.jpg");
} 
.twoColElsLtHdr #header h1 {
	margin: 0; /* zeroing the margin of the last element in the #header div will avoid margin collapse - an unexplainable space between divs. If the div has a border around it, this is not necessary as that also avoids the margin collapse */
	padding: 10px 0; /* using padding instead of margin will allow you to keep the element away from the edges of the div */
}

/* Tips for sidebar1:
1. Be aware that if you set a font-size value on this div, the overall width of the div will be adjusted accordingly.
2. Since we are working in ems, it's best not to use padding on the sidebar itself. It will be added to the width for standards compliant browsers creating an unknown actual width. 
3. Space between the side of the div and the elements within it can be created by placing a left and right margin on those elements as seen in the ".twoColElsLtHdr #sidebar1 p" rule.
*/
.twoColElsLtHdr #sidebar1 {
	float: left;
	width: 12em; /* the background color will be displayed for the length of the content in the column, but no further */
	padding: 15px 0; /* top and bottom padding create visual space within this div */
	background-color: #FFFFFF;
}
.twoColElsLtHdr #sidebar1 h3, .twoColElsLtHdr #sidebar1 p {
	margin-left: 10px; /* the left and right margin should be given to every element that will be placed in the side columns */
	margin-right: 10px;
}

/* Tips for mainContent:
1. If you give this #mainContent div a font-size value different than the #sidebar1 div, the margins of the #mainContent div will be based on its font-size and the width of the #sidebar1 div will be based on its font-size. You may wish to adjust the values of these divs.
2. The space between the mainContent and sidebar1 is created with the left margin on the mainContent div.  No matter how much content the sidebar1 div contains, the column space will remain. You can remove this left margin if you want the #mainContent div's text to fill the #sidebar1 space when the content in #sidebar1 ends.
3. To avoid float drop, you may need to test to determine the approximate maximum image/element size since this layout is based on the user's font sizing combined with the values you set. However, if the user has their browser font size set lower than normal, less space will be available in the #mainContent div than you may see on testing.
4. In the Internet Explorer Conditional Comment below, the zoom property is used to give the mainContent "hasLayout." This avoids several IE-specific bugs that may occur.
*/
.twoColElsLtHdr #mainContent {
	margin: 0 1.5em 0 13em; /* the right margin can be given in ems or pixels. It creates the space down the right side of the page. */
} 
.twoColElsLtHdr #footer { 
	padding: 0 10px; /* this padding matches the left alignment of the elements in the divs that appear above it. */
	background:#DDDDDD;
} 
.twoColElsLtHdr #footer p {
	margin: 0; /* zeroing the margins of the first element in the footer will avoid the possibility of margin collapse - a space between divs */
	padding: 10px 0; /* padding on this element will create space, just as the the margin would have, without the margin collapse issue */
}

/* Miscellaneous classes for reuse */
.fltrt { /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class should be placed on a div or break element and should be the final element before the close of a container that should fully contain a float */
	clear:both;
    height:0;
    font-size: 1px;
    line-height: 0px;
}
.style1 {font-family: Arial, Helvetica, sans-serif}
.style5 {
	font-size: 60%;
	font-style: italic;
	color: #99FFFF;
}
.style6 {font-style: italic; color: #FFFF00; font-weight: bold; font-size: 45px;}
.style7 {font-size: 80%}
--> 
</style>
<!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.twoColElsLtHdr #sidebar1 { padding-top: 30px; }
.twoColElsLtHdr #mainContent { zoom: 1; padding-top: 15px; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]--></head>

<body class="twoColElsLtHdr">
    &nbsp;<div id="container">
  <div id="header">
    <table width="700
    " border="0">
      <tr>
        <td width="94" align="center" valign="middle"><img src="../Hinh anh/Crown1.jpg" width="91" height="66" /></td>
        <td width="419" align="center" style="color: #ffffff">
          <h1><span class="style1"><span class="style7">Vật liệu xây dựng</span> <span class="style6">ROYAL</span></span><br />
          <span class="style5">Đẳng cấp là mãi mãi</span></h1>
        </td>
        <td width="173" align="left"><img src="../Hinh anh/images2.jpg" width="127" height="85" /></td>
      </tr>
    </table>
    </div>
<div id="sidebar1">
      <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2"
          Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px"
          Width="199px">
          <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
          <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
          <DynamicMenuStyle BackColor="#FFFBD6" />
          <StaticSelectedStyle BackColor="#FFCC66" />
          <DynamicSelectedStyle BackColor="#FFCC66" />
          <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
          <Items>
              <asp:MenuItem Text="Đăng k&#253;" Value="Đăng k&#253;"></asp:MenuItem>
              <asp:MenuItem Text="Chỉnh sửa th&#244;ng tin" Value="Chỉnh sửa th&#244;ng tin"></asp:MenuItem>
              <asp:MenuItem Text="Tin tức" Value="Tin tức"></asp:MenuItem>
          </Items>
          <StaticHoverStyle BackColor="#990000" ForeColor="White" />
      </asp:Menu>
      <br />
    <uc2:DangNhap id="DangNhap1" runat="server">
    </uc2:DangNhap></div>
  <!-- InstanceBeginEditable name="NoiDung" -->
  <div id="mainContent">
    <h1> Tin tức</h1>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent aliquam,  justo convallis luctus rutrum, erat nulla fermentum diam, at nonummy quam  ante ac quam. Maecenas urna purus, fermentum id, molestie in, commodo  porttitor, felis. Nam blandit quam ut lacus. </p>
    <p>Quisque ornare risus quis  ligula. Phasellus tristique purus a augue condimentum adipiscing. Aenean  sagittis. Etiam leo pede, rhoncus venenatis, tristique in, vulputate at,  odio. Donec et ipsum et sapien vehicula nonummy. Suspendisse potenti. Fusce  varius urna id quam. Sed neque mi, varius eget, tincidunt nec, suscipit id,  libero. In eget purus. Vestibulum ut nisl. Donec eu mi sed turpis feugiat  feugiat. Integer turpis arcu, pellentesque eget, cursus et, fermentum ut,  sapien. Fusce metus mi, eleifend sollicitudin, molestie id, varius et, nibh.  Donec nec libero.</p>
      <p>&nbsp;
          </p>
      <p>&nbsp;
          </p>
      <p>&nbsp;
          </p>
      <p>&nbsp;
          </p>
      <p>&nbsp;
          </p>
      <p>&nbsp;
          </p>
  </div>
  <!-- InstanceEndEditable -->
  <div id="footer">
    <p>
        scyllagroup@gmail.com</p>
  <!-- end #footer --></div>
<!-- end #container --></div>
</body>
<!-- InstanceEnd --></html>
