package sonam.com.OnlineFoodStore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import sonam.com.OnlineFoodStore.dao.CartDao;
import sonam.com.OnlineFoodStore.dao.CustomerDao;
import sonam.com.OnlineFoodStore.dao.LoginDao;
import sonam.com.OnlineFoodStore.dao.ProductDao;
import sonam.com.OnlineFoodStore.model.Product;

import java.io.IOException;
import java.util.List;

@Controller
public class HomeController {
    private ProductDao productDao=new ProductDao();
    private CustomerDao customerDao =new CustomerDao();
    private CartDao cartDao =new CartDao();
    private LoginDao loginDao =new LoginDao();
    private LoginDao loginDao1 =new LoginDao();
    
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

    @RequestMapping("/viewCustomer")
    public String viewCustomer(Model model)
    {
        String customer=customerDao.getCustomerName();
        model.addAttribute(customer);
        return "viewCustomer";
    }

    @RequestMapping("/viewCardDetails")
    public String viewCardDetails(Model model)
    {
        String customer=customerDao.getCustomerName();
        model.addAttribute(customer);
        return "viewCardDetails";
    }

    @RequestMapping("/viewCart")
    public String viewCart(Model model)
    {
        String cart=cartDao.getCartList().toString();
        model.addAttribute(cart);
        return "viewCart";
    }

    @RequestMapping("/viewLogin")
    public String viewLogin(Model model)
    {
        String login=loginDao.getUserName();
        model.addAttribute(login);
        return "viewLogin";
    }
    
    @RequestMapping("/viewAdminLogin")
    public String viewAdminLogin(Model model)
    {
        String login=loginDao.getUserName();
        model.addAttribute(login);
        return "viewAdminLogin";
    }

    @RequestMapping("/viewCRUD")
    public String viewCRUD(Model model)
    {
        String login=loginDao.getUserName();
        model.addAttribute(login);
        return "viewCRUD";
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