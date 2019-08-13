package sonam.com.OnlineFoodStore.dao;

import sonam.com.OnlineFoodStore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;
    public List<Product> getProductList()
    {
        Product product1=new Product();
        product1.setProductId("ID01");
        product1.setProductName("Tomatoes");
        product1.setProductCategory("Tropical Vegetables");
        product1.setProductDescription("Hybrid Large tomatoes. Rich flavor");
        product1.setProductPrice(15);
        product1.setProductCondition("Grown in Georgia tissue culture unit");
        product1.setProductStatus("Active");
        product1.setUnitInStock(200);
        product1.setProductManufacturer("Georgia Foods");

        Product product2=new Product();
        product2.setProductId("ID02");
        product2.setProductName("Cauli Flower");
        product2.setProductCategory("Tropical Vegetables");
        product2.setProductDescription("Early White Hybrid Caluliflower");
        product2.setProductPrice(17);
        product2.setProductCondition("Grown in an organic cultured environment");
        product2.setProductStatus("Active");
        product2.setUnitInStock(20);
        product2.setProductManufacturer("Healthy Homes");

        Product product3=new Product();
        product3.setProductId("ID03");
        product3.setProductName("Cabbage");
        product3.setProductCategory("Tropical Vegetables");
        product3.setProductDescription("Greeen Cabbage, Locally grown");
        product3.setProductPrice(17);
        product3.setProductCondition("One head of locally grown green cabbage");
        product3.setProductStatus("Active");
        product3.setUnitInStock(20);
        product3.setProductManufacturer("Eat Healthy foods");

        Product product4=new Product();
        product4.setProductId("ID04");
        product4.setProductName("Spinach");
        product4.setProductCategory("Green leafy vegetables");
        product4.setProductDescription("Organic food");
        product4.setProductPrice(17);
        product4.setProductCondition("Grown in a healthy farming environment");
        product4.setProductStatus("Active");
        product4.setUnitInStock(20);
        product4.setProductManufacturer("Go Green Foods");

        Product product5=new Product();
        product5.setProductId("ID05");
        product5.setProductName("Mushrooms");
        product5.setProductCategory("Special Foods");
        product5.setProductDescription("Organic food");
        product5.setProductPrice(17);
        product5.setProductCondition("Grown in a healthy farming environment");
        product5.setProductStatus("Active");
        product5.setUnitInStock(20);
        product5.setProductManufacturer("Jubiliant foods");

        Product product6=new Product();
        product6.setProductId("ID06");
        product6.setProductName("Organic Carrots");
        product6.setProductCategory("Tropical Foods");
        product6.setProductDescription("Manufactured by certified vendors");
        product6.setProductPrice(10);
        product6.setProductCondition("More Quantity.Worth the money");
        product6.setProductStatus("Active");
        product6.setUnitInStock(200);
        product6.setProductManufacturer("GoFarm holdings");

        productList=new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);
        productList.add(product5);
        productList.add(product6);
        return productList;
    }
    public Product getProductById(String productId) throws IOException
    {
        for (Product product: getProductList())
        {
            if(product.getProductId().equals(productId))
            {
                return product;
            }
        }
       throw new IOException("No products found");
    }
}