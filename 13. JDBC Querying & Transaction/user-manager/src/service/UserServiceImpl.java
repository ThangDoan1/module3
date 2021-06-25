package service;

import model.User;
import repository.UserRepositoryImpl;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements UserService {
    private UserRepositoryImpl repository = new UserRepositoryImpl();


    @Override
    public User showEditForm(int id) {
        return repository.showEditForm(id);
    }

    @Override
    public List<User> findAll() throws SQLException {
        return repository.findAll();
    }


    @Override
    public boolean deleteUser(int id) throws SQLException {
        return repository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return repository.updateUser(user);
    }

    @Override
    public User findById(int id) throws SQLException {
        return repository.findById(id);
    }

    @Override
    public void insertUser(User user) {
        repository.insertUser(user);
    }

    @Override
    public List<User> findName(String nameCountry) throws SQLException {
        return repository.findName(nameCountry);
    }

    @Override
    public User getUserById(int id) throws SQLException {
        return repository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        repository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        repository.addUserTransaction(user, permision);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        repository.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        repository.insertUpdateUseTransaction();
    }

    @Override
    public List<User> allUserProcedure() {
        return repository.allUserProcedure();
    }

    @Override
    public boolean updateUserProcedure(User user) throws SQLException {
        return repository.updateUserProcedure(user);
    }

    @Override
    public boolean deleteUserProcedure(int id) throws SQLException {
        return repository.deleteUserProcedure(id);
    }
}
