package com.gclfax.jbpm.demo.controller;

import org.jbpm.services.api.DefinitionService;
import org.jbpm.services.api.ProcessService;
import org.jbpm.services.api.RuntimeDataService;
import org.jbpm.services.api.model.ProcessDefinition;
import org.kie.internal.query.QueryContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/processdef")
public class ProcessDefController {

    @Autowired
    private RuntimeDataService runtimeDataService;

    @Autowired
    private ProcessService processService;

    @Autowired
    private DefinitionService definitionService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getProcessDef() {
        Collection<ProcessDefinition> processDefinitions = runtimeDataService.getProcesses(new QueryContext(0, 100));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("ProcessdefList");
        modelAndView.addObject("processDefinitions", processDefinitions);
        return modelAndView;

    }

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ProcessDefinition getProcessDefinition(@RequestParam String deployment, @RequestParam String id) {

        ProcessDefinition definition = runtimeDataService.getProcessesByDeploymentIdProcessId(deployment, id);

        return definition;
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public Long newProcessInstance(@RequestParam String deploymentId, @RequestParam String processId,
                                   @RequestParam Map<String, String> allRequestParams) {

        allRequestParams.put("employee", "admin");
        allRequestParams.put("reason", "Yearly performance evaluation");
        long processInstanceId = processService.startProcess(deploymentId, processId, new HashMap<String, Object>(allRequestParams));

        return processInstanceId;

    }

    @RequestMapping(value = "/processdefAdd")
    public ModelAndView addProcessdef(@RequestParam String id,@RequestParam String name,@RequestParam String deploymentId) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("ProcessdefAdd");
        modelAndView.addObject("id",id);
        modelAndView.addObject("name",name);
        modelAndView.addObject("deploymentId",deploymentId);

        return modelAndView;
    }


}
