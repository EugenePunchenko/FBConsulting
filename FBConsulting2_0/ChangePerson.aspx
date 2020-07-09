<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePerson.aspx.cs" Inherits="FBConsulting2_0.ChangePerson" %>
<%@ Import Namespace="FBConsulting2_0" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Изменить данные</title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Email</th>

            </tr>
        </thead>
        <tbody>
            <%  PersonContext db = new PersonContext();
                var people = db.Persons;
                foreach (var human in people) {
                    string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td>",
                        human.Id, human.name, human.surname, human.email);
                    Response.Write(htmlString);
                } %>
        </tbody>
    </table>

    <form id="changeform" runat="server">
        <div>
            <h2>Телефонная книга</h2>
            <p>Внесите все данные и мы легко изменим их в нашей БД</p>
        </div>
        <div>
            <label>ID:</label><input type="number" id="Id" runat="server" /></div>
        <div>
            <label>Ваше имя:</label><input type="text" id="name" runat="server" /></div>
        <div>
            <label>Ваша фамилия:</label><input type="text" id="surname" runat="server" /></div>
        <div>

            <label>Ваш email:</label><input type="text" id="email" runat="server" /></div>
        <div>
            <button type="submit">Изменить</button>
        </div>
    </form>

</body>
</html>
