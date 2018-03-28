package nhom18.dao;
import java.util.List;

import nhom18.model.WebInfo;
public interface WebInfoDAOIF {
	WebInfo findByid(int id);
	List<WebInfo> findAllWebpages();
	void save(WebInfo webInfo);
	void deleteById(int id);
}
