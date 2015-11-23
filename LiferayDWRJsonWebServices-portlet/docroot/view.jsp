<%@include file="init.jsp"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type='text/javascript' src='<%=renderRequest.getContextPath()%>/dwr/interface/Person.js'> </script>
<script type='text/javascript' src='<%=renderRequest.getContextPath()%>/dwr/engine.js'> </script>
<script type='text/javascript' src='<%=renderRequest.getContextPath()%>/dwr/util.js'> </script>
<h1>Sample Liferay DWR JSON portlet</h1>
<p>
  <input value="Send" type="button" onclick="update()"/>
  <br/>
  Reply: <span id="demoReply"></span>
</p>

<script>
function update() {
    var name = dwr.util.getValue("demoName");
    $.post("<%=renderRequest.getContextPath()%>/dwr/jsonp/Person/getData/", { },
        function(data) {
            dwr.util.setValue("demoReply", data.reply[0]);
        }, "jsonp"); 
    } 
</script>