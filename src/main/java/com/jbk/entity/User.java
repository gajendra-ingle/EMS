package com.jbk.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;


@Entity
@Table(name = "user")
@Data
public class User {

	@Id
	@Column(name = "user_name")
	private String userName;

	private String password;

	private String role;
}
