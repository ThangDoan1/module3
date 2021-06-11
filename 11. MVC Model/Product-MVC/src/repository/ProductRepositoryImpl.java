package repository;

import model.Product;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {
    private static List<Product> productList;

    static {
        productList = new LinkedList<>();
        productList.add(1, new Product(1, "Car", 100, "good", "usa"));
        productList.add(2, new Product(2, "Bike", 50, "good", "vn"));
    }

    @Override
    public List<Product> findAll() {
        return null;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }
}
