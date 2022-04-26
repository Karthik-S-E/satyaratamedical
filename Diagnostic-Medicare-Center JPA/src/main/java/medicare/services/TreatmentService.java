package medicare.services;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import medicare.dto.TreatmentDTO;
import medicare.models.Appointment;
import medicare.models.Prescription;
import medicare.models.Treatment;
import medicare.repos.PrescriptionRepository;
import medicare.repos.TreatmentRepository;

@Service
public class TreatmentService {

	@Autowired private TreatmentRepository trepo;
	@Autowired private PrescriptionRepository prepo;
	@Autowired private DoctorService dsrv;
	@Autowired private PatientService psrv;
	@Autowired private AppointmentService apsrv;
	
	public void saveTreatment(TreatmentDTO dto) {
		Appointment ap=apsrv.findByApptId(dto.getAptid());
		Treatment t1=trepo.findByAppointment(ap);
		if(t1!=null) {
			t1.setDiagnosis(dto.getDiagnosis());
			t1.setDiet(dto.getDiet());
			t1.setRecommendations(dto.getRecommendations());
			t1.setSymptoms(dto.getSymptoms());
			t1.setTests(dto.getTests());
			
			List<Prescription> plist=prepo.findByTreatment(t1);
			prepo.deleteAllInBatch(plist);
			for(Prescription p : dto.getPres()) {
				if( p.getQty()>0) {
					p.setTreatment(t1);
					prepo.save(p);
				}
			}
			
		}else {
			Treatment tt=TreatmentDTO.toEntity(dto);
			tt.setTdate(LocalDate.now().toString());
			tt.setDoctor(dsrv.findById(dto.getDocid()));
			tt.setPatient(psrv.findByPatientId(dto.getPatid()));
			tt.setAppointment(ap);
			Treatment t=trepo.save(tt);
			
			for(Prescription p : dto.getPres()) {
				if(p.getMname()!=null && p.getQty()>0) {
					p.setTreatment(t);
					prepo.save(p);
				}
			}
		}
	}
	
	public Treatment details(int id) {
		return trepo.findByAppointment(apsrv.findByApptId(id));
	}
	
	public List<Prescription> treatmentPrescription(Treatment t){
		return prepo.findByTreatment(t);
	}
	
	public List<Treatment> findAll(){
		return trepo.findAll();
	}
	
	public List<Treatment> findDoctor(String docid){
		return trepo.findByDoctor(dsrv.findById(docid));
	}
	
	public List<Treatment> findPatient(String id){
		return trepo.findByPatient(psrv.findByPatientId(id));
	}
}
