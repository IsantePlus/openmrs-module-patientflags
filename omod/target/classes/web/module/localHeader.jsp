<ul id="menu">
	<li class="first"><a
		href="admin"><spring:message
		code="admin.title.short" /></a></li>
	<openmrs:hasPrivilege privilege="Manage Flags">
		<li
			<c:if test='<%= request.getRequestURI().contains("manageFlags") %>'>class="active"</c:if>>
		<a
			href="manageFlags.form"><spring:message
			code="patientflags.manageFlags" /></a></li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Flags">
		<li
			<c:if test='<%= request.getRequestURI().contains("manageTags") %>'>class="active"</c:if>>
		<a
			href="manageTags.list"><spring:message
			code="patientflags.manageTags" /></a></li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Priorities">
		<li
			<c:if test='<%= request.getRequestURI().contains("managePriorities") %>'>class="active"</c:if>>
		<a
			href="managePriorities.list"><spring:message
			code="patientflags.managePriorities" /></a></li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Manage Flags">
		<li
			<c:if test='<%= request.getRequestURI().contains("managePatientFlagsProperties") %>'>class="active"</c:if>>
		<a
			href="managePatientFlagsProperties.form"><spring:message
			code="patientflags.managePatientFlagsProperties" /></a></li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Test Flags">
		<li
			<c:if test='<%= request.getRequestURI().contains("findFlaggedPatients") %>'>class="active"</c:if>>
		<a
			href="findFlaggedPatients.form"><spring:message
			code="patientflags.findFlaggedPatients" /></a></li>
	</openmrs:hasPrivilege>
</ul>