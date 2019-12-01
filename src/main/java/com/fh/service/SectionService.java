package com.fh.service;

import com.fh.model.Section;

import java.util.List;

public interface SectionService {

    Section queryById(Integer id);

    Section querySection(Section section);

    void addSection(Section section);

    void updateSection(Section section);

    void deleteSection(Integer id);
}
