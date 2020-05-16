package com.akhi.app.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "Orders")
@Data
public class Orders implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
    @OneToOne(mappedBy = "order",cascade = CascadeType.ALL)
	private IngredientsData ingredientsData;
    
    @OneToOne(mappedBy = "order",cascade = CascadeType.ALL)
    private OrderData orderData;
    
    @Column
    private Double price;
    
    @Column
    private String userId;
    
    

}
