package repository;

import model.Product;

import java.util.*;

public class ProductRepositoryImpl implements ProductRepository {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(0, new Product(1, "Car", 100, "good", "usa"));
        products.put(1, new Product(2, "Bike", 50, "good", "vn"));
    }

    @Override
    public List<Product> findAll() {
        return new LinkedList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findName(String nameProduct) {
        List<Product> listProduct = new ArrayList<>();
        Set<Integer> set = products.keySet();
        for (int key : set) {

            if (products.get(key).getNameProduct().contains(nameProduct)) {
                listProduct.add(products.get(key));
            }
        }
        return listProduct;
    }

}
