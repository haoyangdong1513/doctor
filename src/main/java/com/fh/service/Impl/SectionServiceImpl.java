package com.fh.service.Impl;

import com.fh.dao.SectionDao;
import com.fh.model.Section;
import com.fh.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "sectionService")
public class SectionServiceImpl implements SectionService {

    @Autowired
    private SectionDao sectionDao;

    public Section queryById(Integer id) {
        return sectionDao.queryById(id);
    }

    public Section querySection(Section section) {

        Integer total = sectionDao.queryCount(section);
        section.setTotal(total);

        List<Section> sections = sectionDao.querySection(section);
        section.setList(sections);

        return section;
    }

    public void addSection(Section section) {
        sectionDao.addSection(section);
    }

    public void updateSection(Section section) {
        sectionDao.updateSection(section);
    }

    public void deleteSection(Integer id) {
        sectionDao.deleteSection(id);
    }
}
