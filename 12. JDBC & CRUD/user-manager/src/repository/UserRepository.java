package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserRepository {
    List<User> findAll() throws SQLException;

    public User showEditForm(int id);

  User findById(int id) throws SQLException;

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public void insertUser(User user);

    List<User> findName(String nameCountry) throws SQLException;

}
