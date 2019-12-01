package com.fh.controller;

import com.fh.model.Section;
import com.fh.service.DoctorService;
import com.fh.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("section")
public class SectionController {

    @Resource(name = "sectionService")
    private SectionService sectionService;

    @Resource(name = "doctorService")
    private DoctorService doctorService;

    @RequestMapping("toSectionList")
    public  String toSectionList(ModelMap model, Section section){

        Section section1 = sectionService.querySection(section);
        model.addAttribute("page",section1);

        return "view/Section/Section-list";
    }

    @RequestMapping("toSectionAjax")
    public  String toSectionAjax(){

        return "view/Section/Section-ajax";
    }
    @RequestMapping("toSectionAdd")
    public  String toSectionAdd(){


        return "view/Section/Section-add";
    }

    @RequestMapping("addSection")
    @Transactional
    public  String addSection(Section section){

        sectionService.addSection(section);

        return "redirect:/section/toSectionAjax";
    }

    @RequestMapping("deleteSection")
    @Transactional
    public  String deleteSection(Integer id){

        doctorService.deleteBySectionId(id);
        sectionService.deleteSection(id);

        return "redirect:/section/toSectionAjax";
    }


    @RequestMapping("toupdateSection")
    @Transactional
    public  String toupdateSection(Integer id, Model model){


        Section section = sectionService.queryById(id);
        model.addAttribute("section",section);

        return "view/Section/Section-update";
    }

    @RequestMapping("updateSection")
    @Transactional
    public  String updateSection(Section section){

        sectionService.updateSection(section);

        return "redirect:/section/toSectionAjax";
    }


}
