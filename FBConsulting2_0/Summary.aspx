<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="FBConsulting2_0.Summary" %>
<%@ Import Namespace="FBConsulting2_0" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Просмотр данных</title>
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

    <form id="deleteform" runat="server">
        <div>
            
            <h2>Введите id и я удалю человека из записной книжки</h2>
        </div>
        <div>
            <label>ID:</label><input type="number" id="Id" runat="server" /></div>
        <div>
            <button type="submit">Удалить из записной книги</button>
        </div>
    </form>

     
</body>
</html>
