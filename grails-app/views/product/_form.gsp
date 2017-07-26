<%@ page import="grailsmarket.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="product.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${productInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="product.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${productInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'serialNumber', 'error')} required">
	<label for="serialNumber">
		<g:message code="product.serialNumber.label" default="Serial Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serialNumber" required="" value="${productInstance?.serialNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="product.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacturer" required="" value="${productInstance?.manufacturer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${grailsmarket.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="product.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="image" name="image" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>
</div>

