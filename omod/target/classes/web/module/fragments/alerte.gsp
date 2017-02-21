<div class="info-section">
    <div class="info-header">
        <h3>${ ui.message("patientflags.alerte") } </h3>
    </div>
    
    <div class="info-body">
    <% flaglist.each {%>
            <span ${ui.format(it.flag.priority.style)}>${ui.format(it.flagMessage)}</span><br />
    <% } %>
    </div>
</div>