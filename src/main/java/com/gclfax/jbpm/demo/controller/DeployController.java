package com.gclfax.jbpm.demo.controller;

import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.jbpm.kie.services.impl.KModuleDeploymentUnit;
import org.jbpm.services.api.DeploymentService;
import org.jbpm.services.api.model.DeployedUnit;
import org.kie.api.KieBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/deployment")
public class DeployController {

	@Autowired
	private DeploymentService deploymentService;

	@Autowired
	private KieBase kieBase;

    @RequestMapping("/")
    public Collection<String> index() {
    	Collection<DeployedUnit> deployed = deploymentService.getDeployedUnits();
    	Collection<String> units = new ArrayList<String>();

    	for (DeployedUnit dUnit : deployed) {
    		units.add(dUnit.getDeploymentUnit().getIdentifier());
    	}

        return units;
    }


	@RequestMapping("/deployAdd")
	public ModelAndView addDeploy(){
		return  new ModelAndView("DeployAdd");
	}

    @RequestMapping(value="/deploy", method= RequestMethod.POST)
	@ResponseBody
    public String deploy(@RequestParam("id")String id, @RequestParam(value="strategy", defaultValue="SINGLETON") String strategy) {

		Map<String, Object> map = new HashMap<>();
    	try{
			String outcome = "Deployment " + id + " deployed successfully";

			String[] gav = id.split(":");

			KModuleDeploymentUnit unit = new KModuleDeploymentUnit(gav[0], gav[1], gav[2], null, null, strategy);
			deploymentService.deploy(unit);


			map.put("code",1);
			map.put("msg",outcome);
			return JSONObject.fromObject(map).toString();
		}catch (Exception e){
			map.put("code",1);
			map.put("msg",e.getMessage());
			return JSONObject.fromObject(map).toString();
		}

    }

    @RequestMapping(value="/undeploy", method= RequestMethod.POST)
    public String undeploy(@RequestParam("id")String id) {
    	String outcome = "";
    	DeployedUnit deployed = deploymentService.getDeployedUnit(id);
    	if (deployed != null) {
    		deploymentService.undeploy(deployed.getDeploymentUnit());
    		outcome = "Deployment " + id + " undeployed successfully";
    	} else {
    		outcome = "No deployment " + id + " found";
    	}
    	return outcome;
    }
}
