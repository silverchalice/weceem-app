<%@ page import="com.iskbiocides.model.Dealer" %>



<div class="fieldcontain ${hasErrors(bean: dealer, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="dealer.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="company" required="" value="${dealer?.company}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="dealer.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${dealer?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="dealer.contact.label" default="Contact" />
		
	</label>
	<g:textField name="contact" value="${dealer?.contact}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="dealer.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${dealer?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="dealer.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${dealer?.address2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="dealer.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${dealer?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="dealer.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${dealer?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="dealer.products.label" default="Products" />
		
	</label>
	<g:textField name="products" value="${dealer?.products}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="dealer.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${dealer?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="dealer.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${dealer?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dealer, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="dealer.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${dealer?.zip}"/>

</div>

