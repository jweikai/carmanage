package com.ouyan.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class FileUtils {
	private static String imgRegex = "^jpe?g|png|gif|bmp$";
	public static String getExt(File file) {
		String name = file.getName();
		return name.substring(name.lastIndexOf('.') + 1).toLowerCase();
	}
	public static boolean isImage(String imgExt) {
		return imgExt.matches(imgRegex);
	}
	public static boolean isImage(File file) {
		return isImage(getExt(file));
	}
	public static String getNotExtName(String name) {
		return name.substring(0, name.lastIndexOf("."));
	}
}
