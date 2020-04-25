package ait.jan.sdqi.chemsdam.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Delivery 
{
	private String resident_flat_number;
	private String delivery_reference_number;
	private String delivery_name;
	private String delivery_type;
	private String delivery_company;
	private String delivery_expected_date;
	private String delivery_arrived_date;
	private String resident_mobile_number;
	private String delivery_status;
}
