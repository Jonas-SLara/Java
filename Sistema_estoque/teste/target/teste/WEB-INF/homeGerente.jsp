<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>

<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
  </head>
  <body>
    <a href="${pageContext.request.contextPath}/usuarioServlet">Sair</a>
    <h1>Sistema de estoque atacadão (Gerente)</h2>
    <h2>${pageContext.request.contextPath}</h2>

    <h2>Bem vindo, <c:out value="${sessionScope.usuario.nome}"/>!</h1>
    <h3>Confira seus dados</h3>
    <ul>
      <li><strong>Nome: </strong> <c:out value="${sessionScope.gerente.usuario.nome}"/> </li>
      <li><strong>CPF: </strong> <c:out value="${sessionScope.usuario.cpf}"/> </li>
      <li><strong>Salario: </strong> <c:out value="${sessionScope.gerente.usuario.salario}"/></li>
      <li><strong>Email: </strong> <c:out value="${sessionScope.gerente.usuario.email}"/></li>
      <li><strong>Celular: </strong> <c:out value="${sessionScope.gerente.usuario.celular}"/></li>
      <li><strong>Bonificação: </strong> <c:out value="${sessionScope.gerente.bonificacao}"/></li>
    </ul>
    
    <!--Servlet gerenteServlet recebe o parametro 'acao' para saber qual ação fazer-->
    <h3>Gerenciamento dos funcionários</h3>
      <ul>
        <li>
          <a href="${pageContext.request.contextPath}/gerenteServlet?acao=listarFuncionarios">
            Ver seus Funcionarios
          </a>
        </li>
        <li>

          <a href="${pageContext.request.contextPath}/gerenteServlet?acao=irCadastrarFuncionario">
            Cadastrar novo Funcionario
          </a>
        </li>
      </ul>

      <h3>Gerenciamento de produtos</h3>
      <ul>
        <li>
          <a href="${pageContext.request.contextPath}/gerenteServlet?acao=listarProdutos">
            Ver seus Produtos
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/gerenteServlet?acao=irCadastrarProduto">
            Cadastrar Produto
          </a>
        </li>
      </ul>
  </body>
</html>
