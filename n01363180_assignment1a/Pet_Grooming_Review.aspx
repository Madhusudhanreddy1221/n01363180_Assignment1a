<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pet_Grooming_Review.aspx.cs" Inherits="n01363180_assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet Grooming Review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <header><h1>Pet Grooming Review</h1></header>
    <form id="form1" runat="server">
        <div class="row1">
            <section>
                <label>First Name</label>
                <asp:TextBox runat="server" ID="customer_first_name" placeholder="e.g. John" ></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your first name" ControlToValidate="customer_first_name"></asp:RequiredFieldValidator>
            </section>
            <section>
                <label>Last Name</label>
                <asp:TextBox runat="server" ID="customer_last_name" placeholder="e.g. elton"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your last name" ControlToValidate="customer_last_name"></asp:RequiredFieldValidator>
            </section>
            <section>
                <label>Email</label>
                <asp:TextBox runat="server" ID="customer_email" placeholder="example@domain.com"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your email" ControlToValidate="customer_email"></asp:RequiredFieldValidator>
                <%-- Title: Email validation Author: www.codeproject.com Date: 09/24/2019 Availability: https://www.codeproject.com/Questions/360797/How-to-Validate-the-Email-id-Using-Asp-net purpose: Class Assignment--%>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="customer_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="please enter valid email address."></asp:RegularExpressionValidator>
            </section>
            <section>
                <label>Phone</label>
                <asp:TextBox runat="server" ID="customer_phone"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your phone number" ControlToValidate="customer_phone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="customer_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter a valid phone number."></asp:RegularExpressionValidator>
            </section>
        </div>
        <div>
            <section>
                <label>Phone type</label>
                <div>
                    <asp:RadioButtonList runat="server" ID="customer_phone_type">
                        <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                        <asp:ListItem Text="Cell" Value="Cell"></asp:ListItem>
                        <asp:ListItem Text="Office" Value="Office"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please select the phone type" ControlToValidate="customer_phone_type"></asp:RequiredFieldValidator>
                </div>
            </section>
            <section>
                <label>How was our hospitality?</label>
                <asp:DropDownList runat="server" ID="customer_hospitality">
                    <asp:ListItem Text="very good" Value="very good"></asp:ListItem>
                    <asp:ListItem Text="good" Value="good"></asp:ListItem>
                    <asp:ListItem Text="ok" Value="ok"></asp:ListItem>
                    <asp:ListItem Text="not good" Value="not good"></asp:ListItem>
                    <asp:ListItem Text="not sure" Value="not sure"></asp:ListItem>
                </asp:DropDownList>
            </section>
            <section>
                <label>Which branches have you visited ?</label>
                <asp:CheckBoxList ID="grooming_branch" runat="server">
                    <asp:ListItem Text="york" Value="york"></asp:ListItem>
                    <asp:ListItem Text="vaughan" Value="vaughan"></asp:ListItem>
                </asp:CheckBoxList>

            </section>
            <section>
                <label>Review</label>
                <asp:textBox id="customer_review" mode="multiline" runat="server" Width="250px" Height="70px"></asp:textBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="please write your review!" ControlToValidate="customer_review"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:Button runat="server" name="submit" Text="submit"/>
            </section>
            <section>
                <asp:ValidationSummary runat="server" ForeColor="red" ShowSummary="true" />
            </section>
            <section id="confirmationbox" runat="server">

            </section>
        </div>
    </form>
</body>
</html>
