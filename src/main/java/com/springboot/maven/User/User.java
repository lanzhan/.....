package com.springboot.maven.User;

public class User {
    private  int id;
    private  String name;
    private  int age;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String birthday;
    private  String address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
