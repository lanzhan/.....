package com.springboot.maven.User;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.validation.constraints.NotEmpty;
@Component
@Repository
public class User {
    private  String id;
    private  String name;
    private  int age;
    private String birthday;
    private  String address;
    public  User(){

    }
    public User(String id,String name, int age,String birthday,String  address){
        this.id=id;
        this.name=name;
        this.age=age;
        this.birthday=birthday;
        this.address=address;
    }
    @NotEmpty(message="id不能为空")
    public String getId() { return id;  }

    public void setId(String id) {  this.id = id;   }

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
