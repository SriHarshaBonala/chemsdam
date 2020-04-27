package ait.jan.sdqi.chemsdam.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Visitor 
{
	private String resident_flat_number;
	private String visitor_identification_number;
	private String visitor_name;
	private String visitor_expected_date;
	private String visitor_arrived_date;
	private String visitor_departed_date;
	private String visitor_mobile_number;
	private String resident_mobile_number;
	private String visitor_status;
}
