package sonam.com.OnlineFoodStore.dao;

import sonam.com.OnlineFoodStore.model.Cart;


import java.util.ArrayList;
import java.util.List;

public class CartDao {
    private List<Cart> cartList;
    public List<Cart> getCartList()
    {
        Cart cart1=new Cart();
        cart1.setItemName("Chicken Burger");
        cart1.setTotalAmount("17$");

        Cart cart2=new Cart();
        cart2.setItemName("Veggie Wonder Pizza");
        cart2.setTotalAmount("17$");
        cartList=new ArrayList<Cart>();
        cartList.add(cart1);
        cartList.add(cart2);
        return cartList;
    }
}