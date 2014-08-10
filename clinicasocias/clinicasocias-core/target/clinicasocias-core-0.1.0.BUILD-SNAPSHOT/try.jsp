<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:set var="baseURL" value="${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, pageContext.request.contextPath)}" />

<%-- 		<link href="<c:url value="/css/demo.css" />" rel="stylesheet"> --%>
		<link href="<c:url value="/css/ladda.min.css" />" rel="stylesheet">
<!--         <link rel="stylesheet" href="css/demo.css"> -->
<!--         <link rel="stylesheet" href="dist/ladda.min.css"> -->
    </head>
    <body>
        <button type="submit" class="ladda-button" data-style="zoom-out" name="submit">
            <span class="ladda-label">Submit</span>
            <span class="ladda-spinner"></span>
        </button>
<script src="${baseURL}/js/spin.min.js"></script>
<script src="${baseURL}/js/ladda.min.js"></script>
        <script>
            Ladda.bind( '.ladda-button', { timeout: 2000 } );
        </script>
    </body>
</html>