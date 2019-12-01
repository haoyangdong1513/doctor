package com.fh.controller;

import com.fh.model.Doctor;
import com.fh.service.DoctorService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;


import javax.annotation.Resource;

@Controller
@RequestMapping("doctor")
public class DoctorController {

    @Resource(name = "doctorService")
    private DoctorService doctorService;

    @RequestMapping("toDoctorList")
    public String toDoctorList(Doctor doctor, Model model){
        Doctor doctor1 = doctorService.queryDoctor(doctor);
        model.addAttribute("page",doctor1);
        return "view/Doctor/Doctor-list";
    }

    @RequestMapping("toDoctorAjax")
    public String toDoctorAjax(Integer sectionId,HttpSession session){
        session.setAttribute("sectionId",sectionId);
        return "view/Doctor/Doctor-ajax";
    }

    @RequestMapping("toDoctorAdd")
    public String toDoctorAdd(){
        return "view/Doctor/Doctor-add";
    }

    @RequestMapping("addDoctor")
    public String addDoctor(Doctor doctor){
            doctor.setStatus(1);
            doctorService.addDoctor(doctor);

        return "redirect:/aaa.jsp";
    }

    @RequestMapping("deleteDoctor")
    public  String deleteDoctor(Integer id){

        doctorService.deleteDoctor(id);

        return "redirect:/aaa.jsp";
    }

    @RequestMapping("toupdateDoctor")
    public  String toupdateDoctor(Integer id,Model model){

        Doctor doctor = doctorService.queryById(id);
        model.addAttribute(doctor);

        return "view/Doctor/Doctor-update";
    }

    @RequestMapping("updateDoctor")
    public  String updateDoctor(Doctor doctor){
            doctorService.updateDoctor(doctor);
        return "redirect:/aaa.jsp";
    }

}
