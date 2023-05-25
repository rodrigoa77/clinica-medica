    <%@ page import="br.edu.imepac.utils.MessagesArrayList, java.util.ArrayList" %>

    <%
    MessagesArrayList<String> messagesArrayList = (MessagesArrayList<String>) request.getAttribute("messagesArrayList");
    if(messagesArrayList != null){
    %>
    <div class="moldura-mensagem-erro">
        <div class="<%=messagesArrayList.getTipoMensagem()%>">
            <p>
                <%=messagesArrayList.getMessagemContexto() %>
            </p>
            <ul>
                <%
                for(String item : messagesArrayList){
                    out.println("<li>"+item+"</li>");
                }
                %>
            </ul>
        </div>
    </div>
    <% } %>