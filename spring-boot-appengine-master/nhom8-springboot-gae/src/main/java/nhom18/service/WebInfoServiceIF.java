package nhom18.service;

import java.util.List;

import nhom18.model.WebInfo;

public interface WebInfoServiceIF {
	WebInfo findById(int id);
	void saveWebpage(WebInfo webInfo);
	void updateWebpage(WebInfo webInfo);
	void deleteUserById(int id);
	List<WebInfo> findAllWebPages();
}
