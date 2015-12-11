
<%@ page import="com.iskbiocides.model.Dealer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="domain">
    <g:set var="entityName" value="${message(code: 'dealer.label', default: 'Dealer')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-dealer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div class="content" role="main">
    <h1>Upload Dealer File</h1>
    <div style="margin:40px">Format (CSV): <i>RecNum, Company, Address1, Address2, City, State, Zip, Phone, Contact, Website, Email, WoodGuard, Swedish, NaturalHome, HasWeb, woodguarditf, beegone, woodoil, SurfacePrep, StaBrite, WoodGuardxl</i></div>
    <div style="margin: 40px">
        <g:uploadForm action="uploadDealers">
            <input type="file" name="file">
            <g:submitButton name="upload" value="Upload" />
        </g:uploadForm>
    </div>

</div>
</body>
</html>
