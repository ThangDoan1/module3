package service;

import model.Product;
import repository.ProductRepository;
import repository.ProductRepositoryImpl;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private ProductRepository repository = new ProductRepositoryImpl();
        @Override
        public List<Product> findAll() {
            return repository.findAll();
        }

        @Override
        public void save(Product product) {
            repository.save(product);
        }

        @Override
        public Product findById(int id) {
            return repository.findById(id);
        }

        @Override
        public void update(int id, Product product) {
            repository.update(id, product);
        }

        @Override
        public void remove(int id) {
            repository.remove(id);
        }
}
