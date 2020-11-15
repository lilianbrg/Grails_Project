<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-saleAd" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.saleAd}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.saleAd}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.saleAd}" method="POST">
                <fieldset class="fieldcontain required">
                    <div class="form-group">
                        <label for="Title">Title
                            <span class="required-indicator">*</span>
                            <input type="String" class="form-control" id="Title" required="">
                    </div>
                    <div class="fieldcontain required">
                        <label for="Description">Description
                            <span class="required-indicator">*</span>
                            <input type="String" class="form-control" id="Description" required="">
                    </div>
                    <div class="fieldcontain required">
                        <label for="LongDescription">LongDescription
                            <span class="required-indicator">*</span>
                            <textarea class="form-control" id="LongDescription" row="3" required=""></textarea>
                    </div>
                    <div class="fieldcontain required">
                        <ul></ul>
                        <a href="/tpmbds/illustration/create?saleAd.id">Add illustration</a>
                    </div>
                    <div class="fieldcontain required">
                        <label for="Price">Price
                            <span class="required-indicator">*</span>
                            <input type="String" class="form-control" id="Price" required="">
                    </div>
                    <div class="fieldcontain required">
                        <label for="author">Author
                            <span class="required-indicator">*</span>
                        </label><select name="author.id" required="" id="author">
                        <option value="1">User(username:admin)</option>
                        <option value="2">User(username:moderator)</option>
                        <option value="3">User(username:user)</option>
                    </select>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
