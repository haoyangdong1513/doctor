package com.fh.dao;

import com.fh.model.Doctor;

import java.util.List;

public interface DoctorDao {

    Doctor queryById(Integer id);

    List<Doctor> queryDoctor(Doctor doctor);

    Integer queryCount(Doctor doctor);

    void addDoctor(Doctor doctor);

    void updateDoctor(Doctor doctor);

    void deleteDoctor(Integer id);

    void deleteBySectionId(Integer id);

}
