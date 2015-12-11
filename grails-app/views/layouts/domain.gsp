<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

    <style type="text/css">

    /* FONT STACK */
    body,
    input, select, textarea {
        font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
    }

    h1, h2, h3, h4, h5, h6 {
        line-height: 1.1;
    }

    /* BASE LAYOUT */

    html {
        background-color: #ddd;
        background-image: -moz-linear-gradient(center top, #aaa, #ddd);
        background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #aaa), color-stop(1, #ddd));
        background-image: linear-gradient(top, #aaa, #ddd);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorStr = '#aaaaaa', EndColorStr = '#dddddd');
        background-repeat: no-repeat;
        height: 100%;
        /* change the box model to exclude the padding from the calculation of 100% height (IE8+) */
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    html.no-cssgradients {
        background-color: #aaa;
    }

    .ie6 html {
        height: 100%;
    }

    html * {
        margin: 0;
    }

    body {
        background: #ffffff;
        color: #333333;
        margin: 0 auto;
        max-width: 960px;
        overflow-x: hidden; /* prevents box-shadow causing a horizontal scrollbar in firefox when viewport < 960px wide */
        -moz-box-shadow: 0 0 0.3em #255b17;
        -webkit-box-shadow: 0 0 0.3em #255b17;
        box-shadow: 0 0 0.3em #255b17;
    }

    #grailsLogo {
        background-color: #abbf78;
    }

    /* replace with .no-boxshadow body if you have modernizr available */
    .ie6 body,
    .ie7 body,
    .ie8 body {
        border-color: #255b17;
        border-style: solid;
        border-width: 0 1px;
    }

    .ie6 body {
        height: 100%;
    }

    a:link, a:visited, a:hover {
        color: #48802c;
    }

    a:hover, a:active {
        outline: none; /* prevents outline in webkit on active links but retains it for tab focus */
    }

    h1 {
        color: #48802c;
        font-weight: normal;
        font-size: 1.25em;
        margin: 0.8em 0 0.3em 0;
    }

    ul {
        padding: 0;
    }

    img {
        border: 0;
    }

    /* GENERAL */

    #grailsLogo a {
        display: inline-block;
        margin: 1em;
    }

    .content {
    }

    .content h1 {
        border-bottom: 1px solid #CCCCCC;
        margin: 0.8em 1em 0.3em;
        padding: 0 0.25em;
    }

    .scaffold-list h1 {
        border: none;
    }

    .footer {
        background: #abbf78;
        color: #000;
        clear: both;
        font-size: 0.8em;
        margin-top: 1.5em;
        padding: 1em;
        min-height: 1em;
    }

    .footer a {
        color: #255b17;
    }

    .spinner {
        background: url(../images/spinner.gif) 50% 50% no-repeat transparent;
        height: 16px;
        width: 16px;
        padding: 0.5em;
        position: absolute;
        right: 0;
        top: 0;
        text-indent: -9999px;
    }

    /* NAVIGATION MENU */

    .nav {
        background-color: #efefef;
        padding: 0.5em 0.75em;
        -moz-box-shadow: 0 0 3px 1px #aaaaaa;
        -webkit-box-shadow: 0 0 3px 1px #aaaaaa;
        box-shadow: 0 0 3px 1px #aaaaaa;
        zoom: 1;
    }

    .nav ul {
        overflow: hidden;
        padding-left: 0;
        zoom: 1;
    }

    .nav li {
        display: block;
        float: left;
        list-style-type: none;
        margin-right: 0.5em;
        padding: 0;
    }

    .nav a {
        color: #666666;
        display: block;
        padding: 0.25em 0.7em;
        text-decoration: none;
        -moz-border-radius: 0.3em;
        -webkit-border-radius: 0.3em;
        border-radius: 0.3em;
    }

    .nav a:active, .nav a:visited {
        color: #666666;
    }

    .nav a:focus, .nav a:hover {
        background-color: #999999;
        color: #ffffff;
        outline: none;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
    }

    .no-borderradius .nav a:focus, .no-borderradius .nav a:hover {
        background-color: transparent;
        color: #444444;
        text-decoration: underline;
    }

    .nav a.home, .nav a.list, .nav a.create {
        background-position: 0.7em center;
        background-repeat: no-repeat;
        text-indent: 25px;
    }

    .nav a.home {
        background-image: url(../images/skin/house.png);
    }

    .nav a.list {
        background-image: url(../images/skin/database_table.png);
    }

    .nav a.create {
        background-image: url(../images/skin/database_add.png);
    }

    /* CREATE/EDIT FORMS AND SHOW PAGES */

    fieldset,
    .property-list {
        margin: 0.6em 1.25em 0 1.25em;
        padding: 0.3em 1.8em 1.25em;
        position: relative;
        zoom: 1;
        border: none;
    }

    .property-list .fieldcontain {
        list-style: none;
        overflow: hidden;
        zoom: 1;
    }

    .fieldcontain {
        margin-top: 1em;
    }

    .fieldcontain label,
    .fieldcontain .property-label {
        color: #666666;
        text-align: right;
        width: 25%;
    }

    .fieldcontain .property-label {
        float: left;
    }

    .fieldcontain .property-value {
        display: block;
        margin-left: 27%;
    }

    label {
        cursor: pointer;
        display: inline-block;
        margin: 0 0.25em 0 0;
    }

    input, select, textarea {
        background-color: #fcfcfc;
        border: 1px solid #cccccc;
        font-size: 1em;
        padding: 0.2em 0.4em;
    }

    select {
        padding: 0.2em 0.2em 0.2em 0;
    }

    select[multiple] {
        vertical-align: top;
    }

    textarea {
        width: 250px;
        height: 150px;
        overflow: auto; /* IE always renders vertical scrollbar without this */
        vertical-align: top;
    }

    input[type=checkbox], input[type=radio] {
        background-color: transparent;
        border: 0;
        padding: 0;
    }

    input:focus, select:focus, textarea:focus {
        background-color: #ffffff;
        border: 1px solid #eeeeee;
        outline: 0;
        -moz-box-shadow: 0 0 0.5em #ffffff;
        -webkit-box-shadow: 0 0 0.5em #ffffff;
        box-shadow: 0 0 0.5em #ffffff;
    }

    .required-indicator {
        color: #48802C;
        display: inline-block;
        font-weight: bold;
        margin-left: 0.3em;
        position: relative;
        top: 0.1em;
    }

    ul.one-to-many {
        display: inline-block;
        list-style-position: inside;
        vertical-align: top;
    }

    .ie6 ul.one-to-many, .ie7 ul.one-to-many {
        display: inline;
        zoom: 1;
    }

    ul.one-to-many li.add {
        list-style-type: none;
    }

    /* EMBEDDED PROPERTIES */

    fieldset.embedded {
        background-color: transparent;
        border: 1px solid #CCCCCC;
        margin-left: 0;
        margin-right: 0;
        padding-left: 0;
        padding-right: 0;
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        box-shadow: none;
    }

    fieldset.embedded legend {
        margin: 0 1em;
    }

    /* MESSAGES AND ERRORS */

    .errors,
    .message {
        font-size: 0.8em;
        line-height: 2;
        margin: 1em 2em;
        padding: 0.25em;
    }

    .message {
        background: #f3f3ff;
        border: 1px solid #b2d1ff;
        color: #006dba;
        -moz-box-shadow: 0 0 0.25em #b2d1ff;
        -webkit-box-shadow: 0 0 0.25em #b2d1ff;
        box-shadow: 0 0 0.25em #b2d1ff;
    }

    .errors {
        background: #fff3f3;
        border: 1px solid #ffaaaa;
        color: #cc0000;
        -moz-box-shadow: 0 0 0.25em #ff8888;
        -webkit-box-shadow: 0 0 0.25em #ff8888;
        box-shadow: 0 0 0.25em #ff8888;
    }

    .errors ul,
    .message {
        padding: 0;
    }

    .errors li {
        list-style: none;
        background: transparent url(../images/skin/exclamation.png) 0.5em 50% no-repeat;
        text-indent: 2.2em;
    }

    .message {
        background: transparent url(../images/skin/information.png) 0.5em 50% no-repeat;
        text-indent: 2.2em;
    }

    /* form fields with errors */

    .error input, .error select, .error textarea {
        background: #fff3f3;
        border-color: #ffaaaa;
        color: #cc0000;
    }

    .error input:focus, .error select:focus, .error textarea:focus {
        -moz-box-shadow: 0 0 0.5em #ffaaaa;
        -webkit-box-shadow: 0 0 0.5em #ffaaaa;
        box-shadow: 0 0 0.5em #ffaaaa;
    }

    /* same effects for browsers that support HTML5 client-side validation (these have to be specified separately or IE will ignore the entire rule) */

    input:invalid, select:invalid, textarea:invalid {
        background: #fff3f3;
        border-color: #ffaaaa;
        color: #cc0000;
    }

    input:invalid:focus, select:invalid:focus, textarea:invalid:focus {
        -moz-box-shadow: 0 0 0.5em #ffaaaa;
        -webkit-box-shadow: 0 0 0.5em #ffaaaa;
        box-shadow: 0 0 0.5em #ffaaaa;
    }

    /* TABLES */

    table {
        border-top: 1px solid #DFDFDF;
        border-collapse: collapse;
        width: 100%;
        margin-bottom: 1em;
    }

    tr {
        border: 0;
    }

    tr>td:first-child, tr>th:first-child {
        padding-left: 1.25em;
    }

    tr>td:last-child, tr>th:last-child {
        padding-right: 1.25em;
    }

    td, th {
        line-height: 1.5em;
        padding: 0.5em 0.6em;
        text-align: left;
        vertical-align: top;
    }

    th {
        background-color: #efefef;
        background-image: -moz-linear-gradient(top, #ffffff, #eaeaea);
        background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ffffff), color-stop(1, #eaeaea));
        filter: progid:DXImageTransform.Microsoft.gradient(startColorStr = '#ffffff', EndColorStr = '#eaeaea');
        -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff', EndColorStr='#eaeaea')";
        color: #666666;
        font-weight: bold;
        line-height: 1.7em;
        padding: 0.2em 0.6em;
    }

    thead th {
        white-space: nowrap;
    }

    th a {
        display: block;
        text-decoration: none;
    }

    th a:link, th a:visited {
        color: #666666;
    }

    th a:hover, th a:focus {
        color: #333333;
    }

    th.sortable a {
        background-position: right;
        background-repeat: no-repeat;
        padding-right: 1.1em;
    }

    th.asc a {
        background-image: url(../images/skin/sorted_asc.gif);
    }

    th.desc a {
        background-image: url(../images/skin/sorted_desc.gif);
    }

    .odd {
        background: #f7f7f7;
    }

    .even {
        background: #ffffff;
    }

    th:hover, tr:hover {
        background: #E1F2B6;
    }

    /* PAGINATION */

    .pagination {
        border-top: 0;
        margin: 0;
        padding: 0.3em 0.2em;
        text-align: center;
        -moz-box-shadow: 0 0 3px 1px #AAAAAA;
        -webkit-box-shadow: 0 0 3px 1px #AAAAAA;
        box-shadow: 0 0 3px 1px #AAAAAA;
        background-color: #EFEFEF;
    }

    .pagination a,
    .pagination .currentStep {
        color: #666666;
        display: inline-block;
        margin: 0 0.1em;
        padding: 0.25em 0.7em;
        text-decoration: none;
        -moz-border-radius: 0.3em;
        -webkit-border-radius: 0.3em;
        border-radius: 0.3em;
    }

    .pagination a:hover, .pagination a:focus,
    .pagination .currentStep {
        background-color: #999999;
        color: #ffffff;
        outline: none;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
    }

    .no-borderradius .pagination a:hover, .no-borderradius .pagination a:focus,
    .no-borderradius .pagination .currentStep {
        background-color: transparent;
        color: #444444;
        text-decoration: underline;
    }

    /* ACTION BUTTONS */

    .buttons {
        background-color: #efefef;
        overflow: hidden;
        padding: 0.3em;
        -moz-box-shadow: 0 0 3px 1px #aaaaaa;
        -webkit-box-shadow: 0 0 3px 1px #aaaaaa;
        box-shadow: 0 0 3px 1px #aaaaaa;
        margin: 0.1em 0 0 0;
        border: none;
    }

    .buttons input,
    .buttons a {
        background-color: transparent;
        border: 0;
        color: #666666;
        cursor: pointer;
        display: inline-block;
        margin: 0 0.25em 0;
        overflow: visible;
        padding: 0.25em 0.7em;
        text-decoration: none;

        -moz-border-radius: 0.3em;
        -webkit-border-radius: 0.3em;
        border-radius: 0.3em;
    }

    .buttons input:hover, .buttons input:focus,
    .buttons a:hover, .buttons a:focus {
        background-color: #999999;
        color: #ffffff;
        outline: none;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
        -moz-box-shadow: none;
        -webkit-box-shadow: none;
        box-shadow: none;
    }

    .no-borderradius .buttons input:hover, .no-borderradius .buttons input:focus,
    .no-borderradius .buttons a:hover, .no-borderradius .buttons a:focus {
        background-color: transparent;
        color: #444444;
        text-decoration: underline;
    }

    .buttons .delete, .buttons .edit, .buttons .save {
        background-position: 0.7em center;
        background-repeat: no-repeat;
        text-indent: 25px;
    }

    .ie6 .buttons input.delete, .ie6 .buttons input.edit, .ie6 .buttons input.save,
    .ie7 .buttons input.delete, .ie7 .buttons input.edit, .ie7 .buttons input.save {
        padding-left: 36px;
    }

    .buttons .delete {
        background-image: url(../images/skin/database_delete.png);
    }

    .buttons .edit {
        background-image: url(../images/skin/database_edit.png);
    }

    .buttons .save {
        background-image: url(../images/skin/database_save.png);
    }

    a.skip {
        position: absolute;
        left: -9999px;
    }


    </style>



    <g:layoutHead/>
</head>
<body>
<div id="grailsLogo" role="banner"><a href="/"><img src="${resource(dir: 'images', file: 'img_logo.png')}" alt="Grails"/></a></div>
<g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
</body>
</html>
