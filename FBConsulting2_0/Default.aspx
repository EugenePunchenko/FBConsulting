
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
    Inherits="FBConsulting2_0._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
        <div class="container">
  <div class="row">
    <div class="col-sm">
      <a href="https://localhost:44356/Default">
          Форма для добавления
      </a>
        
    </div>
    <div class="col-sm">

       <a href="https://localhost:44356/Summary">
          Посмотреть данные
      </a>
    </div>
      <div class="col-sm">

       <a href="https://localhost:44356/ChangePerson">
          Изменить данные
      </a>
    </div>
  </div>
</div>
    <form id="addform" runat="server">
        <div>
            <h2>Телефонная книга</h2>
            <p>Внесите все данные и мы легко добавим в нашу БД</p>
        </div>
        <div>
            <label>Ваше имя:</label><input type="text" id="name" runat="server" /></div>
        <div>
            <label>Ваша фамилия:</label><input type="text" id="surname" runat="server" /></div>
        <div>

            <label>Ваш email:</label><input type="text" id="email" runat="server" /></div>
        <div>
            <button type="submit">Добавить в записную книгу</button>
        </div>
    </form>
</body>
</html>