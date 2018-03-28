package nhom18.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import nhom18.dao.AccountRepository;
import nhom18.model.Account;

@Service
@Repository
@Transactional
public class AccountService {

	private final AccountRepository AccountRepository;

	public AccountService(AccountRepository AccountRepository) {
		this.AccountRepository = AccountRepository;
	}
	
	public List<Account> findAll(){
		List<Account> Accounts = new ArrayList<>();
		for(Account Account : AccountRepository.findAll()){
			Accounts.add(Account);
		}
		return Accounts;
	}
	
	public Account findAccount(int id){
		return AccountRepository.findOne(id);
	}
	
	public void save(Account Account){
		AccountRepository.save(Account);
	}
	
	public void delete(int id){
		AccountRepository.delete(id);
	}
}
