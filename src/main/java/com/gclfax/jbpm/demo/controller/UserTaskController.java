package com.gclfax.jbpm.demo.controller;

import com.gclfax.jbpm.demo.domain.Business1ReviewLog;
import com.gclfax.jbpm.demo.domain.Role;
import com.gclfax.jbpm.demo.service.Business1ReviewLogService;
import com.gclfax.jbpm.demo.service.UserService;
import net.sf.json.JSONObject;
import org.common5iq.util.Utils;
import org.jbpm.services.api.DefinitionService;
import org.jbpm.services.api.RuntimeDataService;
import org.jbpm.services.api.UserTaskService;
import org.jbpm.services.api.model.UserTaskInstanceDesc;
import org.kie.api.task.model.TaskSummary;
import org.kie.internal.query.QueryFilter;
import org.kie.internal.task.api.AuditTask;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
import java.util.Map.Entry;

@RestController
@RequestMapping("/task")
public class UserTaskController {

    @Autowired
    private RuntimeDataService runtimeDataService;

    @Autowired
    private UserTaskService userTaskService;

    @Autowired
    private UserService userService;

    @Autowired
    private DefinitionService definitionService;


    @Autowired
    private Business1ReviewLogService business1ReviewLogService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public Collection<TaskSummary> getTasks() {
        String userId = getAuthUser();

        Collection<TaskSummary> tasks = runtimeDataService.getTasksAssignedAsPotentialOwner(userId, new QueryFilter(0, 100));

        return tasks;

    }


    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public UserTaskInstanceDesc getTask(@RequestParam String id) {

        Long taskId = Long.parseLong(id);

        UserTaskInstanceDesc task = runtimeDataService.getTaskById(taskId);

        return task;

    }

    @RequestMapping(value = "/myTaskList", method = RequestMethod.GET)
    public ModelAndView myTask() {

        String userId = getAuthUser();

        List<AuditTask> tasks = runtimeDataService.getAllAuditTask(userId, null);


        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("MyTaskList");
        if (tasks != null) {
            modelAndView.addObject("tasks", tasks);
        }

        return modelAndView;
    }

    @RequestMapping(value = "/groupTaskList", method = RequestMethod.GET)
    public ModelAndView groupTaskList() {

        String userId = getAuthUser();

        List<Role> role = userService.findRoleByUserName(userId);

        String groupStr = "";
        if (role != null && role.size() > 0 && !Utils.isBlank(role.get(0).getName())) {
            groupStr = role.get(0).getName();
        }
        List<AuditTask> tasks = runtimeDataService.getAllGroupAuditTask(groupStr, null);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("GroupTaskList");
        if (tasks != null) {
            modelAndView.addObject("tasks", tasks);
        }

        return modelAndView;
    }


    @RequestMapping(value = "/complete", method = RequestMethod.POST)
    @ResponseBody
    public String completeTask(@RequestParam String id, @RequestParam Map<String, String> allRequestParams) {
        String userId = getAuthUser();

        Map<String, Object> map = new HashMap<>();
        Map<String, Object> data = new HashMap<String, Object>();

        for (Entry<String, String> entry : allRequestParams.entrySet()) {
            Object value = entry.getValue();
            // just a simple type conversion
            // integer
            try {
                value = Integer.parseInt(value.toString());
            } catch (NumberFormatException e) {
                // ignore
            }
            // boolean
            if (value.toString().equalsIgnoreCase("true") || value.toString().equalsIgnoreCase("false")) {
                value = Boolean.parseBoolean(value.toString());
            }
            data.put(entry.getKey(), value);
        }

        try {

            int tid = Utils.toInteger(allRequestParams.get("tid"));
            int pid = Utils.toInteger(allRequestParams.get("pid"));
            Business1ReviewLog business1ReviewLog = business1ReviewLogService.findBusiness1ReviewLogByPid(pid);

            if (business1ReviewLog != null) {
                Business1ReviewLog business1ReviewLog1 = new Business1ReviewLog();
                business1ReviewLog1.setBid(business1ReviewLog.getBid());
                business1ReviewLog1.setTid(tid);
                business1ReviewLog1.setPid(pid);
                business1ReviewLog1.setReviewUsername(userId);
                business1ReviewLog1.setReviewTime(new Date());
                business1ReviewLog1.setReviewContent("审核内容： 完成审核 时间：" + new Date());
                business1ReviewLogService.save(business1ReviewLog1);
            }


            userTaskService.complete(Long.parseLong(id), userId, data);
            map.put("msg", "Task " + id + " completed successfully");
            return JSONObject.fromObject(map).toString();

        } catch (Exception e) {
            map.put("msg", "Task " + id + " complete failed due to " + e.getMessage());
            return JSONObject.fromObject(map).toString();
        }


    }

    @RequestMapping(value = "/claim", method = RequestMethod.POST)
    @ResponseBody
    public String claimTask(@RequestParam String id, @RequestParam Map<String, String> allRequestParams) {
        String userId = getAuthUser();
        Map<String, Object> map = new HashMap<>();
        try {


            int tid = Utils.toInteger(allRequestParams.get("tid"));
            int pid = Utils.toInteger(allRequestParams.get("pid"));
            Business1ReviewLog business1ReviewLog = business1ReviewLogService.findBusiness1ReviewLogByPid( pid);

            if (business1ReviewLog != null) {
                Business1ReviewLog business1ReviewLog1 = new Business1ReviewLog();
                business1ReviewLog1.setBid(business1ReviewLog.getBid());
                business1ReviewLog1.setTid(tid);
                business1ReviewLog1.setPid(pid);
                business1ReviewLog1.setReviewUsername(userId);
                business1ReviewLog1.setReviewTime(new Date());
                business1ReviewLog1.setReviewContent("指派任务" + userId + " 时间：" + new Date());
                business1ReviewLogService.save(business1ReviewLog1);
            }

            userTaskService.claim(Long.parseLong(id), userId);

            map.put("msg", "Task " + id + " claimed successfully");
            return JSONObject.fromObject(map).toString();
        } catch (Exception e) {
            map.put("code", 1);
            map.put("msg", "Task " + id + " claim failed due to " + e.getMessage());
            return JSONObject.fromObject(map).toString();

        }

    }

    @RequestMapping(value = "/release", method = RequestMethod.POST)
    @ResponseBody
    public String releaseTask(@RequestParam String id) {
        String userId = getAuthUser();
        Map<String, Object> map = new HashMap<>();
        try {
            userTaskService.release(Long.parseLong(id), userId);
            map.put("msg", "Task " + id + " released successfully");
            return JSONObject.fromObject(map).toString();

        } catch (Exception e) {
            map.put("msg", "Task " + id + " release failed due to " + e.getMessage());
            return JSONObject.fromObject(map).toString();
        }

    }

    @RequestMapping(value = "/start", method = RequestMethod.POST)
    @ResponseBody
    public String startTask(@RequestParam String id, @RequestParam Map<String, String> allRequestParams) {
        String userId = getAuthUser();
        Map<String, Object> map = new HashMap<>();
        try {



            int tid = Utils.toInteger(allRequestParams.get("tid"));
            int pid = Utils.toInteger(allRequestParams.get("pid"));
            Business1ReviewLog business1ReviewLog = business1ReviewLogService.findBusiness1ReviewLogByPid(pid);

            if (business1ReviewLog != null) {
                Business1ReviewLog business1ReviewLog1 = new Business1ReviewLog();
                business1ReviewLog1.setBid(business1ReviewLog.getBid());
                business1ReviewLog1.setTid(tid);
                business1ReviewLog1.setPid(pid);
                business1ReviewLog1.setReviewUsername(userId);
                business1ReviewLog1.setReviewTime(new Date());
                business1ReviewLog1.setReviewContent("审核内容： 开始审核 时间：" + new Date());
                business1ReviewLogService.save(business1ReviewLog1);
            }


            userTaskService.start(Long.parseLong(id), userId);

            map.put("msg", "Task " + id + " started successfully");
            return JSONObject.fromObject(map).toString();
        } catch (Exception e) {
            map.put("msg", "Task " + id + " start failed due to " + e.getMessage());
            return JSONObject.fromObject(map).toString();
        }

    }

    protected String getAuthUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userId = auth.getName();

        return userId;
    }
}
