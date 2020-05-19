package com.akhi.app.model.ingredients;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Table(name = "Ingredients")
@Data
public class Ingredients implements Serializable{
	
	
	public Ingredients(Ingredient ingredients, Orders order, Integer quantity) {
		super();
		this.ingredient = ingredients;
		this.order = order;
		this.quantity = quantity;
	}

	public Ingredients() {
		super();
	}

	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
	
	@OneToOne
	@JoinColumn(name="ingredient_id",referencedColumnName = "id",nullable = false)
	private Ingredient ingredient;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id",referencedColumnName = "id",nullable = false)
	private Orders order;
	
	@Column
	private Integer quantity;
	
	
	
}
