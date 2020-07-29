package com.akhi.app.model.pricing;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "burgerPricing")
@Data
public class BurgerPricing implements Serializable {
	
	private static final long serialVersionUID = 1L;
		
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
    @Column(name = "ingredient_id")
	private Integer ingredient;
	
	@Column
	private Double price;

}
