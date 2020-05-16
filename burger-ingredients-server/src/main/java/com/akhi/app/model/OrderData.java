package com.akhi.app.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;
@Entity
@Table(name = "orderData")
@Data
public class OrderData implements Serializable{


	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
	@OneToOne
	@JoinColumn(name="order_id",referencedColumnName = "id",nullable = false)
	private Orders order;
	
    @Column
    private String country;
    
    @Column
    private String email;
    
    @Column
    private String delivaryMethod;
    
    @Column
    private String name;
    
    @Column
    private String street;
    
    @Column
    private String zipCode;
}
