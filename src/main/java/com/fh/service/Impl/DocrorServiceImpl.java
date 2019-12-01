package com.fh.service.Impl;

import com.fh.dao.DoctorDao;
import com.fh.model.Doctor;
import com.fh.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "doctorService")
public class DocrorServiceImpl implements DoctorService {

    @Autowired
    private DoctorDao doctorDao;

    public Doctor queryById(Integer id) {
        return doctorDao.queryById(id);
    }

    public Doctor queryDoctor(Doctor doctor) {
        Integer total = doctorDao.queryCount(doctor);
        doctor.setTotal(total);

        List<Doctor> doctors = doctorDao.queryDoctor(doctor);
        doctor.setList(doctors);

        return doctor;
    }



    public void addDoctor(Doctor doctor) {
        doctorDao.addDoctor(doctor);
    }

    public void updateDoctor(Doctor doctor) {
        doctorDao.updateDoctor(doctor);
    }

    public void deleteDoctor(Integer id) {
        doctorDao.deleteDoctor(id);
    }

    public void deleteBySectionId(Integer id) {
        doctorDao.deleteBySectionId(id);
    }
}
