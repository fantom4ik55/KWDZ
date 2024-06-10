import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

// Класс для животного
class Animal {
    private String name;
    private String type;
    private List<String> commands;

    public Animal(String name, String type) {
        this.name = name;
        this.type = type;
        this.commands = new ArrayList<>();
    }

    public void addCommand(String command) {
        commands.add(command);
    }

    public List<String> getCommands() {
        return commands;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    // Методы get и set для полей класса
    // ...
}

// Класс Счетчик
class Counter implements AutoCloseable {
    private int count;

    public Counter() {
        this.count = 0;
    }

    public void add() {
        count++;
    }

    public int getCount() {
        return count;
    }

    @Override
    public void close() throws Exception {
        if (this.count > 0) {
            throw new Exception("Счетчик был использован и не закрыт.");
        }
    }
}

// Главный класс программы
public class PetRegistryApp {
    private static List<Animal> registry = new ArrayList<>();
    private static final String DB_URL = "jdbc:mysql://localhost:3306/Human_friends";
    private static final String USER = "root";
    private static final String PASS = "060129";

    public static void main(String[] args) {
        // Загрузка списка животных из базы данных
        loadAnimalsFromDatabase();

        try (Scanner scanner = new Scanner(System.in);
             Counter counter = new Counter()) {
            boolean exit = false;
            while (!exit) {
                System.out.println("Выберите действие:");
                System.out.println("1. Завести новое животное");
                System.out.println("2. Показать список животных");
                System.out.println("3. Показать команды животного");
                System.out.println("4. Обучить животное новой команде");
                System.out.println("5. Выход");

                int choice = scanner.nextInt();
                scanner.nextLine(); // Очистка буфера

                switch (choice) {
                    case 1:
                        System.out.println("Введите имя и тип животного:");
                        String name = scanner.nextLine();
                        String type = scanner.nextLine();
                        Animal animal = new Animal(name, type);
                        registry.add(animal);
                        counter.add();
                        // Добавление животного в базу данных
                        addAnimalToDatabase(name, type);
                        break;
                    case 2:
                        displayAnimals();
                        break;
                    case 3:
                        // Реализация вывода списка команд животного
                        // ...
                        break;
                    case 4:
                        // Реализация обучения животного новой команде
                        // ...
                        break;
                    case 5:
                        exit = true;
                        break;
                    default:
                        System.out.println("Неверный выбор. Попробуйте снова.");
                }
            }
        } catch (Exception e) {
            System.out.println("Произошла ошибка: " + e.getMessage());
        }
    }

    private static void displayAnimals() {
        if (registry.isEmpty()) {
            System.out.println("Список животных пуст.");
        } else {
            System.out.println("Список животных:");
            for (Animal animal : registry) {
                System.out.println("Имя: " + animal.getName() + ", Тип: " + animal.getType());
            }
        }
    }

    private static void loadAnimalsFromDatabase() {
        try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT name, type FROM animals")) {

            while (rs.next()) {
                String name = rs.getString("name");
                String type = rs.getString("type");
                Animal animal = new Animal(name, type);
                // Здесь можно добавить загрузку команд для животного, если они есть в базе данных
                registry.add(animal);
            }
        } catch (SQLException e) {
            System.out.println("Ошибка при загрузке животных из базы данных: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private static void addAnimalToDatabase(String name, String type) {
        String sql = "INSERT INTO animals (name, type) VALUES (?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Ошибка при добавлении животного в базу данных: " + e.getMessage());
        }
    }
}
