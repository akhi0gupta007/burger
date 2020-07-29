package com.akhi.app.model.ingredients;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreType;

import lombok.Data;

@Entity
@Table(name = "orders")
@Data
public class Orders implements Serializable{

//	private static final long serialVersionUID = 1L;
	
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    
    @OneToMany(mappedBy = "order",cascade = CascadeType.ALL ,orphanRemoval = true)
	private List<Ingredients> ingredients = new ArrayList<Ingredients>();
    
    @OneToOne(mappedBy = "order",cascade = CascadeType.ALL)
    private OrderData orderData;
    
    @Column
    private Double price;
    
    @Column
    private String userId;
    
    @JsonIgnoreType
    public static class Builder{
    	private List<Ingredients> ingredients;    	
    	private OrderData orderData;
    	private String userId;
    	private Double price;
    	
    	public Orders build() {
    		Orders order = new Orders();
    		order.setIngredients(ingredients);
    		order.setOrderData(orderData);
    		order.setPrice(price);
    		order.setUserId(userId);
			return order;
    	}
    	
    	public Builder withIngredients(List<Ingredients> ingredients) {
    		this.ingredients = ingredients;
    		return this;
    	}
    	
    	public Builder withOrderData(OrderData orderData) {
    		this.orderData = orderData;
    		return this;
    	}
    	
    	public Builder withPrice(Double price) {
    		this.setPrice(price);
    		return this;
    	}
    	
     	public Builder withUserId(String user) {
    		this.setUserId(user);
    		return this;
    	}
    	

		public OrderData getOrderData() {
			return orderData;
		}

		public void setOrderData(OrderData orderData) {
			this.orderData = orderData;
		}

		public List<Ingredients> getIngredients() {
			return ingredients;
		}

		public void setIngredients(List<Ingredients> ingredientsData) {
			this.ingredients = ingredientsData;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}
    }
    
    

}
