package com.akhi.app.model.ingredients;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Table(name = "ingredient")
@Data
public class Ingredient implements Serializable{

	private static final long serialVersionUID = 1L;
	public Ingredient() {}
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
	
	@Column
	private String name;	
	
	@JsonIgnore
	@Column	
	private Integer quantity = 0;

}
