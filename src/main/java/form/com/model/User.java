package form.com.model;

import java.sql.Timestamp;

public class User {
	private int id;
	private String username,email,password;
	private Timestamp created_at;
	
	public Timestamp getTimestamp() {
		return created_at;
	}
	public void getTimestamp(Timestamp created_at) {
		this.created_at = created_at;
	}
	public User(int id, String username, String email, String password, Timestamp created_at) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.created_at = created_at;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
