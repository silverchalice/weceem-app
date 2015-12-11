<h1>${state}</h1>


<g:each in="${dealers}" var="dealer">

    <h2>${dealer.company}</h2>

    <p>

        <g:if test="${dealer.address}">
            ${dealer.address}<br />
        </g:if>

        <g:if test="${dealer.address2}">
            ${dealer.address2} ${dealer.city ?: ''} ${dealer.state ?: ''} ${dealer.zip ?: ''}<br />
        </g:if>

        <g:if test="${dealer.phone}">
            Phone: ${dealer.phone}<br />
        </g:if>

        <g:if test="${dealer.contact}">
            Contact: ${dealer.contact}<br />
        </g:if>

        <g:if test="${dealer.email}">
            Email:&nbsp;<a href="mailto:${dealer.email}">${dealer.email}</a><br />
        </g:if>

        <g:if test="${dealer.website}">
            <a href="http://${dealer.website}">${dealer.website}</a>
        </g:if>
    </p>

    <g:if test="${dealer.products}">
        <h5>Products Carried:</h5>

        <p>${dealer.products}</p>
    </g:if>

    <p>&nbsp;</p>

</g:each>
