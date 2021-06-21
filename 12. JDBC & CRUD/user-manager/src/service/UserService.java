package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {

    public User showEditForm(int id);

    public List<User> findAll() throws SQLException;

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    User findById(int id) throws SQLException;
    public void insertUser(User user);

    List<User> findName(String nameCountry) throws SQLException;
}
