/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entites.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class UserDAO {

    private Connection conn;

    public UserDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean userRegister(User us) {

        boolean f = false;
        try {
            String qu = "insert into userdata(name,password,email,number,address,sequrityQuation,answer) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(qu);
            ps.setString(1, us.getName());
            ps.setString(2, us.getPassword());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getNumber());
            ps.setString(5, us.getAddress());
            ps.setString(6, us.getSequrityQuation());
            ps.setString(7, us.getAnswer());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean sellerRegister(User us) {

        boolean f = false;
        try {
            String qu = "insert into productsellerdata(sname,spassword,semail,snumber,saddress,ssequrityQuation,sanswer) values (?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(qu);
            ps.setString(1, us.getName());
            ps.setString(2, us.getPassword());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getNumber());
            ps.setString(5, us.getAddress());
            ps.setString(6, us.getSequrityQuation());
            ps.setString(7, us.getAnswer());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean addproduct(User us) {

        boolean f = false;
        try {
            String qu = "insert into product(PName ,Price ,category ,active ,shopname,images,emailid,shopaddress,Quantity,about,tquantity) values (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(qu);
            ps.setString(1, us.getPName());
            ps.setString(2, us.getPprice());
            ps.setString(3, us.getCategory());
            ps.setString(4, us.getActive());
            ps.setString(5, us.getShopname());
            ps.setString(6, us.getImageFileName());
            ps.setString(7, us.getPemail());
            ps.setString(8, us.getAddress());
            ps.setString(9, us.getAnswer());
            ps.setString(10, us.getPassword());
            ps.setString(11,us.getProductname());

            ps.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getLogin(String em, String ps) {
        User us = null;
        try {
            String qu = "select * from userdata where email=? and password=?";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, em);
            pst.setString(2, ps);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getNString(7));

            }
        } catch (Exception e) {
        }
        return us;
    }

    public User sellerLogin(String em, String ps) {
        User us = null;
        try {
            String qu = "select * from productsellerdata where semail=? and spassword=?";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, em);
            pst.setString(2, ps);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getNString(7));

            }
        } catch (Exception e) {
        }
        return us;
    }

    public User forgetpass(String em, String mn, String sq, String ans, String np) {
        User us = null;
        try {
            String qu = "select * from userdata where email=? and number=? and sequrityQuation=? and answer=? ";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, em);
            pst.setString(2, mn);
            pst.setString(3, sq);
            pst.setString(4, ans);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getNString(7));
                pst.executeUpdate("update userdata set password='" + np + "' where email='" + em + "'");

                while (rs.next()) {

                }

            }
        } catch (Exception e) {
        }
        return us;
    }

    public User sellerforgetpass(String em, String mn, String sq, String ans, String np) {
        User us = null;
        try {
            String qu = "select * from productsellerdata where semail=? and snumber=? and ssequrityQuation=? and sanswer=? ";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, em);
            pst.setString(2, mn);
            pst.setString(3, sq);
            pst.setString(4, ans);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getNString(7));
                pst.executeUpdate("update productsellerdata set spassword='" + np + "' where semail='" + em + "'");

                while (rs.next()) {

                }

            }
        } catch (Exception e) {
        }
        return us;
    }

    public User searchproduct(String pn) {
        User us = null;
        try {
            String qu = "select * from product where PName=?";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, pn);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1));

            }
        } catch (Exception e) {
        }
        return us;
    }

    public User addtocatd(String pn) {
        User us = null;
        try {
            String qu = "select * from productdata where productname    =?";

            PreparedStatement pst = conn.prepareStatement(qu);
            pst.setString(1, pn);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                us = new User(rs.getString(1));

            }
        } catch (Exception e) {
        }
        return us;
    }
}
