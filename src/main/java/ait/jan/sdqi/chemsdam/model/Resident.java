package ait.jan.sdqi.chemsdam.model;

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
}
