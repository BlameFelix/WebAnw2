package de.he;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SQLite {
    private Connection connect() {
        Connection conn = null;
        try {
            String url = "jdbc:sqlite:PFAD ANGEBEN";
            conn = DriverManager.getConnection(url);
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    public void insertCPU(CPU cpu) {
        String sqlArt = "INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (?,?,?,?,?)";
        String sqlCPU = "INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (?,?,?,?,?,?,?)";
        try (Connection conn = this.connect();
             PreparedStatement psArt = conn.prepareStatement(sqlArt);
             PreparedStatement psCPU = conn.prepareStatement(sqlCPU)) {
            psArt.setInt(1, cpu.getArtNr());
            psArt.setString(2, cpu.getManufact());
            psArt.setString(3, cpu.getArtName());
            psArt.setFloat(4, cpu.getPrice());
            psArt.setInt(5, cpu.getArtCount());

            psCPU.setInt(1, cpu.getArtNr());
            psCPU.setInt(2, cpu.getCore());
            psCPU.setInt(3, cpu.getThreads());
            psCPU.setFloat(4, cpu.getFrequency());
            psCPU.setFloat(5, cpu.getTurbo());
            psCPU.setString(6, cpu.getSocket());
            psCPU.setInt(7, cpu.getTdp());

            psArt.executeUpdate();
            psCPU.executeUpdate();
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void selectCPU(int artNr) {
        String sql = "SELECT (ArtNr,Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,Socket,TDP) FROM Article INNER JOIN Processor ON Article.ArtNr = Processor.ArtNr)";
        try (Connection conn = this.connect();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                if (rs.getInt("ArtNr") == artNr) {
                    CPU halko = new CPU(rs.getFloat("Price"), rs.getInt("ArtNr"), rs.getString("Manufacturer"), rs.getString("ArtName"), rs.getInt("ArtCount"), rs.getInt("Cores"), rs.getInt("Threads"), rs.getFloat("Frequenzy"), rs.getFloat("Turbo"), rs.getString("Socket"), rs.getInt("TDP"));
                    break;
                }
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
