/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.patientflags.fragment.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.module.patientflags.Flag;
import org.openmrs.module.patientflags.api.FlagService;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Controller that injects a Patient Flags into a box in the Overview section of the Patient
 * Dashboard page
 */
//(unable to map this controller via annotation since we need to override Openmrs core portlet mapping
//@Controller
//@RequestMapping("**/flagPatientOverview.portlet")
public class AlerteFragmentController {
	
	/**
	 * Populates the Model with the Flags triggered by the specified Patient
	 */
	//(unable to map this controller via annotation since we need to override Openmrs core portlet mapping
	//@RequestMapping(method = RequestMethod.GET)
	public void controller(HttpServletRequest request, Map<String, Object> model,  @RequestParam("patientId") Patient patient) {
		Integer patientID = (Integer) patient.getPatientId();
		//Patient patient = Context.getPatientService().getPatient(patientID);
		
		List<Flag> results = new ArrayList<Flag>();
		FlagService flagService = Context.getService(FlagService.class);
		
		results = flagService.generateFlagsForPatient(patient, Context.getAuthenticatedUser().getAllRoles(), "Patient Dashboard Overview");
		
		List<Map<String, Object>> fgl = new ArrayList<Map<String, Object>>();
		for (Flag flag : results) {
			Map<String, Object> mapFp = new HashMap<String, Object>();

			mapFp.put("flag", flag);
			mapFp.put("flagMessage", flag.evalMessage(patientID));
			
			fgl.add(mapFp);
		}
		
		model.put("flaglist", fgl);
	}
}
