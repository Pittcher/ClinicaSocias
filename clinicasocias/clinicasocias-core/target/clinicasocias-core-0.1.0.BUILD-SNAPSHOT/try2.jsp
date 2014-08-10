<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />


<title>HS MW-Admin R40 @copyright Hasar Sistemas S.R.L</title>

<link href="<c:url value="/css/ladda-themeless.min.css" />" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet">

<%-- <link href="<c:url value="/css/ladda-themeless.min.css" />" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/css/buttonprogress.css" />" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/css/bootstrap-theme.min.css" />" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/css/bootstrap-theme.css" />" rel="stylesheet"> --%>

<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">

<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<link href="/css/jumbotron.css" rel="stylesheet">

    </head>
    <body>
        <button type="submit" class="ladda-button" data-style="zoom-out" name="submit">
            <span class="ladda-label">Submit</span>
            <span class="ladda-spinner"></span>
        </button>

<script src="${baseURL}/js/spin.min.js"></script>
<script src="${baseURL}/js/ladda.min.js"></script>
	
	
<%-- <script src="${baseURL}/js/jquery-1.10.2.js"></script> --%>
<%-- <script src="${baseURL}/js/bootstrap.js"></script> --%>
<%-- <script src="${baseURL}/js/bootstrap.min.js"></script> --%>
	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
		
	</script> 

	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.10.2.min.js">
		
 	</script> 

	<script type="text/javascript"
		src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
		
	</script>
	
<%-- 	<script src="${baseURL}/js/spin.js"></script>	 --%>
<%-- 	<script src="${baseURL}/js/ladda.js"></script> --%>
	
	<script src="${baseURL}/js/ladda.jquery.min.js"></script>
	
	<script src="${baseURL}/js/buttonprogress.js"></script>  

       

        <script>
//             Ladda.bind( '.ladda-button', { timeout: 2000 } );
        </script>
    </body>
</html>