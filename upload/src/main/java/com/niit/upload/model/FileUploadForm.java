package com.niit.upload.model;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadForm {
	private List<MultipartFile> files;

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	
		
	private List<MultipartFile> context;

	public List<MultipartFile> getContext() {
		return context;
	}

	public void setContext(List<MultipartFile> context) {
		this.context = context;
	}
	
}
