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

    public User getUserById(int id) throws SQLException;

    public void insertUserStore(User user) throws SQLException ;

    public void addUserTransaction(User user, int[] permision);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();

    public List<User> allUserProcedure() ;
    public boolean updateUserProcedure(User user) throws SQLException;
    public boolean deleteUserProcedure(int id) throws SQLException;
}
