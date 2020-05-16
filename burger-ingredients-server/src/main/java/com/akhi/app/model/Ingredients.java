package com.akhi.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.Data;

@Entity
@Table(name = "ingredients")
@Data
public class Ingredients implements Serializable{

	private static final long serialVersionUID = 1L;
	public Ingredients() {}
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
	
	@Column
	private String name;	
	
	@Column	
	private Integer quantity = 0;

}
