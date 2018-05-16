package com.gclfax.jbpm.demo.controller;

import com.gclfax.jbpm.demo.domain.Business1;
import com.gclfax.jbpm.demo.domain.Business1ReviewLog;
import com.gclfax.jbpm.demo.service.BusinessService;
import net.sf.json.JSONObject;
import org.jbpm.services.api.DefinitionService;
import org.jbpm.services.api.ProcessService;
import org.jbpm.services.api.RuntimeDataService;
import org.jbpm.services.api.model.ProcessDefinition;
import org.jbpm.services.api.model.ProcessInstanceDesc;
import org.kie.internal.query.QueryContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@RestController
@RequestMapping("/processdef")
public class ProcessDefController {

    @Autowired
    private RuntimeDataService runtimeDataService;

    @Autowired
    private ProcessService processService;

    @Autowired
    private BusinessService businessService;

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
    @ResponseBody
    public String newProcessInstance(@RequestParam String deploymentId, @RequestParam String processId,
                                     @RequestParam Map<String, String> allRequestParams) {

        Map<String, Object> map = new HashMap<>();
        try {


            String content1 = allRequestParams.get("content1");
            String content2 = allRequestParams.get("content2");
            String content3 = allRequestParams.get("content3");

            allRequestParams.put("employee", getAuthUser());
            allRequestParams.put("reason", "Yearly performance evaluation");
            long processInstanceId = processService.startProcess(deploymentId, processId, new HashMap<String, Object>(allRequestParams));


            List<Long> tids = runtimeDataService.getTasksByProcessInstanceId(processInstanceId);

            Business1 business1 = new Business1();
            business1.setContent1(content1);
            business1.setContent2(content2);
            business1.setContent3(content3);

            Business1ReviewLog business1ReviewLog = new Business1ReviewLog();


            business1ReviewLog.setPid((int) processInstanceId);
            if (tids != null && tids.size() > 0) {
                business1ReviewLog.setTid(tids.get(0).intValue());
            }

            business1ReviewLog.setReviewTime(new Date());
            business1ReviewLog.setReviewUsername(getAuthUser());
            business1ReviewLog.setReviewContent("创建流程实例开始审批流程 时间：" + new Date());

            businessService.save(business1, business1ReviewLog);

            map.put("code", 1);
            map.put("msg", "创建成功 实例ID：" + processInstanceId + " 任务ID:" + business1ReviewLog.getTid());
            return JSONObject.fromObject(map).toString();

        } catch (Exception e) {
            map.put("msg", e.getMessage());
            return JSONObject.fromObject(map).toString();
        }

    }

    @RequestMapping(value = "/processdefAdd")
    public ModelAndView addProcessdef(@RequestParam String id, @RequestParam String name, @RequestParam String deploymentId) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("ProcessdefAdd");
        modelAndView.addObject("id", id);
        modelAndView.addObject("name", name);
        modelAndView.addObject("deploymentId", deploymentId);

        return modelAndView;
    }

    protected String getAuthUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userId = auth.getName();

        return userId;
    }


}
