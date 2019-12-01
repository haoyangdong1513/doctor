package com.fh.dao;

import com.fh.model.Section;

import java.util.List;

public interface SectionDao {

    Section queryById(Integer id);

    List<Section> querySection(Section section);

    Integer queryCount(Section section);

    void addSection(Section section);

    void updateSection(Section section);

    void deleteSection(Integer id);



}
