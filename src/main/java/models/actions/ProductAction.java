//represent actions done in the view. links the controllers with the models.managers

package models.actions;

import jakarta.servlet.http.HttpServletRequest;
import models.entities.Product;
import models.managers.ProductManager;
import java.util.HashMap;

public class ProductAction {

    public static void  getAll(HttpServletRequest request){
        HashMap<Integer, Product> all = ProductManager.getAll();
        request.setAttribute("products", all);
    }

    public static void getByName(HttpServletRequest request, String name){
        HashMap<Integer, Product> all = ProductManager.getByName(name);
        request.setAttribute("products", all);

    }
}
