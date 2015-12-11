
<%@ page import="com.iskbiocides.model.Dealer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="domain">
		<g:set var="entityName" value="${message(code: 'dealer.label', default: 'Dealer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dealer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dealer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dealer">
			
				<g:if test="${dealer?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="dealer.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${dealer}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="dealer.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${dealer}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="dealer.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${dealer}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="dealer.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${dealer}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="dealer.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${dealer}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="dealer.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${dealer}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="dealer.products.label" default="Products" /></span>
					
						<span class="property-value" aria-labelledby="products-label"><g:fieldValue bean="${dealer}" field="products"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dealer?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="dealer.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${dealer}" field="state"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dealer, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dealer}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
