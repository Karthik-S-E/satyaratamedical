package medicare.dto;

import java.util.List;

import org.springframework.beans.BeanUtils;

import medicare.models.Appointment;
import medicare.models.Prescription;
import medicare.models.Treatment;

public class TreatmentDTO extends Treatment {
	private String patid;
	private String docid;
	private int aptid;
	private String symptoms;
	private String diagnosis;
	private String recommendations;
	private String diet;
	private String tests;
	
	private List<Prescription> pres;

	public int getAptid() {
		return aptid;
	}

	public void setAptid(int aptid) {
		this.aptid = aptid;
	}

	public String getPatid() {
		return patid;
	}

	public void setPatid(String patid) {
		this.patid = patid;
	}

	public String getDocid() {
		return docid;
	}

	public void setDocid(String docid) {
		this.docid = docid;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getRecommendations() {
		return recommendations;
	}

	public void setRecommendations(String recommendations) {
		this.recommendations = recommendations;
	}

	public String getDiet() {
		return diet;
	}

	public void setDiet(String diet) {
		this.diet = diet;
	}

	public String getTests() {
		return tests;
	}

	public void setTests(String tests) {
		this.tests = tests;
	}

	public List<Prescription> getPres() {
		return pres;
	}

	public void setPres(List<Prescription> pres) {
		this.pres = pres;
	}

	@Override
	public String toString() {
		return "TreatmentDTO [patid=" + patid + ", docid=" + docid + ", symptoms=" + symptoms + ", diagnosis="
				+ diagnosis + ", recommendations=" + recommendations + ", diet=" + diet + ", tests=" + tests + ", pres="
				+ pres.size() + "]";
	}
	
	public static Treatment toEntity(TreatmentDTO dto) {
		Treatment entity=new Treatment();
		BeanUtils.copyProperties(dto, entity);		
		return entity;
	}
	
}
