<%

if(request.getParameter("buttonName") != null) {

       session.setAttribute("status", "guest");

}

%>




<FORM NAME="form1" METHOD="POST">

    <a href ="http://www.google.com">link</a><INPUT TYPE="HIDDEN" NAME="buttonName">

</FORM>




<SCRIPT LANGUAGE="JavaScript">




</SCRIPT>