package com.fh.service;

import com.fh.model.Doctor;

import java.util.List;

public interface DoctorService {

    Doctor queryById(Integer id);

    Doctor queryDoctor(Doctor doctor);

    void addDoctor(Doctor doctor);

    void updateDoctor(Doctor doctor);

    void deleteDoctor(Integer id);

    void deleteBySectionId(Integer id);

}
