package com.itsol.utils;

public class StringUtils {
	public static final String BLANK_STRING_VALUE = "";
	public static boolean isNotNullOrEmpty(String obj1) {
        return obj1 != null && !BLANK_STRING_VALUE.equals(obj1.trim());
    }
}
