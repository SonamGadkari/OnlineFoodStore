package sonam.com.OnlineFoodStore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import sonam.com.OnlineFoodStore.dao.ProductDao;
import sonam.com.OnlineFoodStore.model.Product;

import java.io.IOException;
import java.util.List;

@Controller
public class HomeController {
    private ProductDao productDao=new ProductDao();
   
    @RequestMapping("/")
    public String home(Model model) {
        List<Product> productList=productDao.getProductList();
        //   Product product=productList.get(0);
        model.addAttribute("products",productList);
        return "home";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String ViewProduct(@PathVariable String productId,Model model) throws IOException
    {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }
 

    @RequestMapping("/home_logout")
    public String homeLogout(Model model) {
        List<Product> productList=productDao.getProductList();
        //   Product product=productList.get(0);
        model.addAttribute("products",productList);
        return "home_logout";
    }

    @RequestMapping("/viewHistory")
    public String homeHistory(Model model) {
        List<Product> productList=productDao.getProductList();
        //   Product product=productList.get(0);
        model.addAttribute("products",productList);
        return "viewHistory";
    }

    @RequestMapping("/viewSignup")
    public String homeSignup(Model model) {
        List<Product> productList=productDao.getProductList();
        //   Product product=productList.get(0);
        model.addAttribute("products",productList);
        return "viewSignup";
    }



}