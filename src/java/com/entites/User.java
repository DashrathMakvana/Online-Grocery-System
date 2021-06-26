/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entites;

/**
 *
 * @author Admin
 */
public class User {
    
     private int id;
    private String name,password,email,number,address,sequrityQuation,answer;  
    private String PName;
    private String pemail;

    public String getPemail() {
        return pemail;
    }

    public void setPemail(String pemail) {
        this.pemail = pemail;
    }
    private int pid ,price ;
    private String productname ,category ,active; 
    
    private String shopname,pprice,imageFileName;
   
    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice;
    }

    public String getImageFileName() {
        return imageFileName;
    }

    public void setImageFileName(String imageFileName) {
        this.imageFileName = imageFileName;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public User(int pid, int price, String productname, String category, String active) {
        this.pid = pid;
        this.price = price;
        this.productname = productname;
        this.category = category;
        this.active = active;
    }
    public User(int id, String PName) {
        this.id = id;
        this.PName = PName;
    }

    public String getPName() {
        return PName;
    }

    public void setPName(String PName) {
        this.PName = PName;
    }

    public User(String PName) {
        this.PName = PName;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSequrityQuation() {
        return sequrityQuation;
    }

    public void setSequrityQuation(String sequrityQuation) {
        this.sequrityQuation = sequrityQuation;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public User(int id, String name, String password, String email, String number, String address, String sequrityQuation, String answer) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.number = number;
        this.address = address;
        this.sequrityQuation = sequrityQuation;
        this.answer = answer;
    }

    public User(String name, String password, String email, String number, String address, String sequrityQuation, String answer) {
        this.name = name;
        this.password = password;
        this.email = email;
        this.number = number;
        this.address = address;
        this.sequrityQuation = sequrityQuation;
        this.answer = answer;
    }

    public User() {
    }

  
}
