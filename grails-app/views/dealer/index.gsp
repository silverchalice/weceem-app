
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
		<div id="list-dealer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="company" title="${message(code: 'dealer.company.label', default: 'Company')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'dealer.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="contact" title="${message(code: 'dealer.contact.label', default: 'Contact')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'dealer.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'dealer.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="website" title="${message(code: 'dealer.website.label', default: 'Website')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dealerList}" status="i" var="dealer">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dealer.id}">${fieldValue(bean: dealer, field: "company")}</g:link></td>
					
						<td>${fieldValue(bean: dealer, field: "phone")}</td>
					
						<td>${fieldValue(bean: dealer, field: "contact")}</td>
					
						<td>${fieldValue(bean: dealer, field: "address")}</td>
					
						<td>${fieldValue(bean: dealer, field: "address2")}</td>
					
						<td>${fieldValue(bean: dealer, field: "website")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dealerCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
