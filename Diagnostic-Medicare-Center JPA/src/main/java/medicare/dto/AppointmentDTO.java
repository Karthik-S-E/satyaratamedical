package medicare.dto;

import org.springframework.beans.BeanUtils;

import medicare.models.Appointment;

public class AppointmentDTO {
	private String date;
	private String time;	
	private String patid;
	private String docid;
	private String remarks;
	private String conditions;
	private String servicename;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
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
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	public String getServicename() {
		return servicename;
	}
	public void setServicename(String servicename) {
		this.servicename = servicename;
	}
	public static Appointment toEntity(AppointmentDTO dto) {
		Appointment entity=new Appointment();
		BeanUtils.copyProperties(dto, entity);		
		return entity;
	}
	
}
