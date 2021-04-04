package DAO;

import Model.Product;

import java.util.List;

public interface ProductDAO {
    public void insertProduct(Product product) ;

    public Product selectProduct(int id);

    public List<Product> selectAllProduct();

    public boolean deleteProduct(int id);

    public boolean updateProduct(Product product);
}
