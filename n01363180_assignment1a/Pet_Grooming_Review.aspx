<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pet_Grooming_Review.aspx.cs" Inherits="n01363180_assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet Grooming Review</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <header><h1>Pet Grooming Review</h1></header>
    <main id="main">
        <form id="form1" runat="server" method="GET" action="https://postman-echo.com/get">
            <div class="row1">
                
                <section>
                    <label>First Name</label>
                    <asp:TextBox runat="server" ID="first_name" placeholder="e.g. John" ></asp:TextBox>
                </section>
                <section>
                    <label>Last Name</label>
                    <asp:TextBox runat="server" ID="last_name" placeholder="e.g. elton"></asp:TextBox>
                </section>
                <section>
                    <label>Email</label>
                    <asp:TextBox runat="server" ID="email" placeholder="example@domain.com"></asp:TextBox>
                </section>
                <section>
                    <label>Phone</label>
                    <asp:TextBox runat="server" ID="phone"></asp:TextBox>
                </section>
            </div>
            <div>
                <section>
                    <label>Phone type</label>
                    <div>
                        <asp:RadioButtonList runat="server" ID="phone_type">
                            <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                            <asp:ListItem Text="Cell" Value="Cell"></asp:ListItem>
                            <asp:ListItem Text="Office" Value="Office"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </section>
                <section>
                   <label>How often do you typically get your pet professionally groomed?</label>
                    <asp:DropDownList runat="server" ID="duration">
                        <asp:ListItem Text="Every 1 to 2 Weeks" Value="Every_1_to_2_weeks"></asp:ListItem>
                        <asp:ListItem Text="Every 3 to 4 Weeks" Value="Every_3_to_4_weeks"></asp:ListItem>
                        <asp:ListItem Text="Every 5 to 6 Weeks" Value="Every_5_to_6_weeks"></asp:ListItem>
                        <asp:ListItem Text="Every 7 to 8 Weeks" Value="Every_7_to_8_weeks"></asp:ListItem>
                    </asp:DropDownList>
                </section>
                <section>
                    <label>Which animal did You bring in?</label>
                    <asp:CheckBoxList ID="animal_type" runat="server">
                        <asp:ListItem Text="Dog" Value="Dog"></asp:ListItem>
                        <asp:ListItem Text="Cat" Value="Cat"></asp:ListItem>
                    </asp:CheckBoxList>
                </section>
                <section>
                    <section>
                        <label>Review</label>
                        <asp:textBox id="review" mode="multiline" runat="server" Width="250px" Height="70px"></asp:textBox>
                    </section>
                </section>
                <section>
                    <asp:Button runat="server" name="submit" Text="submit"/>
                </section>
            </div>
        </form>
    </main>
</body>
</html>
