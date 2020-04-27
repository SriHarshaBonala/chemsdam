package ait.jan.sdqi.chemsdam.model;

import java.util.List;

import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Resident 
{
	private String resident_name;
	private String resident_flat_number;
	private String resident_mobile_number;
	private String resident_email;
	private String username;
	private String password;
	
	@ManyToOne private List<Delivery> deliveries;
	@ManyToOne private List<Visitor> visitors;
}
