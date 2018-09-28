package com.itsol.utils;

import java.io.File;
import java.util.ResourceBundle;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BundlesUtils {
	private static final Logger logger = LoggerFactory.getLogger(BundlesUtils.class);

	public static final String FOLDER_SQL = "sql";

	public static String getStringById( String folder, String fileName, String key ) {
		try {
			String baseName;
			if( StringUtils.isNotNullOrEmpty(folder) ) {
				baseName = folder + File.separator + fileName;
			} else {
				baseName = fileName;
			}
			ResourceBundle resourceBundle = ResourceBundle.getBundle(baseName);
			return resourceBundle.getString(key);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			return "";
		}
	}
}
