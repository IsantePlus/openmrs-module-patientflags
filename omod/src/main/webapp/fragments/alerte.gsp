<div class="info-section">
    <div class="info-header">
        <h3>${ ui.message("patientflags.alerte") } </h3>
    </div>
    
    <div class="info-body">
    <g:each var="fm" in="${model.flaglist}">
        <span ${fm.flag.priority.style}>${fm.flagMessage}</span><br />
    </g:each>
    </div>
</div>