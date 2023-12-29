package form.com.model;

import java.sql.Timestamp;

public class Posts {
	private int id;
	private String title,description,image;
	private Timestamp created_at;
	public Posts() {
        // Default constructor
    }
	public Posts(int id, String title, String description, String image, Timestamp created_at) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.image = image;
		this.created_at = created_at;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

}
