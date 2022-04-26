package medicare.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.dto.AppointmentDTO;
import medicare.models.Appointment;
import medicare.repos.AppintmentRepo;

@Service
public class AppointmentService {
	
	@Autowired AppintmentRepo repo;
	@Autowired DoctorService dsrv;
	@Autowired PatientService psrv;
	
	public void saveAppointment(AppointmentDTO dto) {
		Appointment ap=AppointmentDTO.toEntity(dto);
		ap.setDoctor(dsrv.findById(dto.getDocid()));
		ap.setPatient(psrv.findByPatientId(dto.getPatid()));
		repo.save(ap);
	}
	
	public void updateAppointment(Appointment ap) {
		repo.save(ap);
	}
	
	public List<Appointment> findByDoctor(String docid){
		return  repo.findByDoctor(dsrv.findById(docid));
	}

	public List<Appointment> findByPatientId(String patid){
		return  repo.findByPatient(psrv.findByPatientId(patid));
	}
	
	public Appointment findByApptId(int id) {
		return repo.getById(id);
	}
	
	public List<Appointment> confirmedDoctorAppointments(String docid){
		return  repo.findByDoctorAndStatus(dsrv.findById(docid),"Confirmed");
	}
}
