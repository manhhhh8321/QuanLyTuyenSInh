/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import conn.connection;
import static conn.connection.conn;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author manh
 */
public class TaiKhoan implements Serializable{
    private String MaNguoiDung;
    private String TenTaiKhoan;
    private String MatKhau;
    private String role;

    public TaiKhoan(String MaNguoiDung, String TenTaiKhoan, String MatKhau) {
        this.MaNguoiDung= this.MaNguoiDung;
        this.TenTaiKhoan = TenTaiKhoan;
        this.MatKhau = MatKhau;
        this.role = role;
    }

    public TaiKhoan(String TenTaiKhoan, String MatKhau) {
        this.TenTaiKhoan = TenTaiKhoan;
        this.MatKhau = MatKhau;
    }

    public TaiKhoan() {
    }

    public String getMaNguoiDung() {
        return MaNguoiDung;
    }
    
    
    public String getTenTaiKhoan() {
        return TenTaiKhoan;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setTenTaiKhoan(String TenTaiKhoan) {
        this.TenTaiKhoan = TenTaiKhoan;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }
    
    
    
}
