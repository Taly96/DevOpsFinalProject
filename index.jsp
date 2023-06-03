

    <% 
        if(request.getParameter("buttonName") != null) {
               session.setAttribute("status", "guest");
        }
    %>

    <FORM NAME="form1" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="buttonName">
        <INPUT TYPE="BUTTON" VALUE="Button 1" ONCLICK="button1()">
    </FORM>

    <SCRIPT LANGUAGE="JavaScript">
        <!--
        function button1()
        {
            document.form1.buttonName.value = "yes";
            form1.submit();
        } 
        // --> 
    </SCRIPT>
