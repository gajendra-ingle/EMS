package com.jbk.utility;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class EmployeeUtility {

	public static String generateEmployeeId() {
		LocalDate now = LocalDate.now();
		String formattedDate = now.format(DateTimeFormatter.ofPattern("yyyyMMdd"));

		String time = java.time.LocalTime.now().toString().substring(0, 8).replace(":", "");
		return formattedDate + time; // Example: 20231206123045 (YearMonthDayHourMinuteSecond)
	}
}
