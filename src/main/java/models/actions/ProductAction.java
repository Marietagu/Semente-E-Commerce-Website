//represent actions done in the view. links the controllers with the models.managers

package models.actions;

import jakarta.servlet.http.HttpServletRequest;
import models.entities.Cart;
import models.entities.Product;
import models.managers.ProductManager;

import java.util.ArrayList;
import java.util.HashMap;

public class ProductAction {

    public static final String PRODUCTS_NAME = "products";

    public static void  getAll(HttpServletRequest request){
        HashMap<Integer, Product> all = ProductManager.getAll();
        request.setAttribute(PRODUCTS_NAME, all);
    }


    public static void getByName(HttpServletRequest request, String name){
        HashMap<Integer, Product> all = ProductManager.getByName(name);
        request.setAttribute(PRODUCTS_NAME, all);

    }


    public static void getByCategory(HttpServletRequest request, String category){
        HashMap<Integer, Product> all = ProductManager.getByCategory(category);
        request.setAttribute(PRODUCTS_NAME, all);
    }


    public static void getById(HttpServletRequest request, int id){
        Product all = ProductManager.getById(id);
        request.setAttribute(PRODUCTS_NAME, all); }

//    public static void getTotalCartPrice(HttpServletRequest request, ArrayList<Cart> cartContent){
//        Product all = ProductManager.getTotalCartPrice();
//        request.setAttribute(PRODUCTS_NAME, all);
//    }



    }
