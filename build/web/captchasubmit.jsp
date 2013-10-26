<%-- 
    Document   : captchasubmit
    Created on : Jul 26, 2013, 12:18:28 PM
    Author     : nehabha
--%>

<%@ page import="nl.captcha.Captcha"%>

<%

Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);

request.setCharacterEncoding("UTF-8");

String answer = request.getParameter("answer");

if (captcha.isCorrect(answer)) {

%>

<center><b>Correct Captcha Code !</b> <%

} else {

%> <b>In Correct Captcha Code !</b> <%

}

%>

</center>