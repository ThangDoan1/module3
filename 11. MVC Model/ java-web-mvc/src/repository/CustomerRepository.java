package repository;

import model.Customer;

import java.util.List;

import model.Customer ;

public interface CustomerRepository  {
    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    void update(int id , Customer customer);

    void remove(int id);
}
