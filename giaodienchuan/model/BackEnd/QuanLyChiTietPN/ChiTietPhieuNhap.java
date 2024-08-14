/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package giaodienchuan.model.BackEnd.QuanLyChiTietPN;

/**
 *
 * @author Admin
 */
public class ChiTietPhieuNhap {

    String maPN;
    String maSP;
    Integer soLuong;
    Float donGia;

    public ChiTietPhieuNhap() {

    }

    public ChiTietPhieuNhap(String maPN, String maSP, Integer soLuong, Float donGia) {
        this.maPN = maPN;
        this.maSP = maSP;
        this.soLuong = soLuong;
        this.donGia = donGia;
    }

    public String getMaPN() {
        return maPN;
    }

    public String getMaSP() {
        return maSP;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public Float getDonGia() {
        return donGia;
    }

    public void setMaPN(String maPN) {
        this.maPN = maPN;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public void setDonGia(Float donGia) {
        this.donGia = donGia;
    }

}
