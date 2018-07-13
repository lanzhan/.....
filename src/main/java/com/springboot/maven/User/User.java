package com.springboot.maven.User;

import javax.validation.constraints.NotEmpty;

public class User {
    private  int id;
    private  String name;
    private  int age;
    private String birthday;
    private  String address;
    public  User(){

    }
    public User(int id,String name, int age,String birthday,String  address){
        this.id=id;
        this.name=name;
        this.age=age;
        this.birthday=birthday;
        this.address=address;
    }
    @NotEmpty(message="id不能为空")
    public int getId() { return id;  }

    public void setId(int id) {  this.id = id;   }

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
