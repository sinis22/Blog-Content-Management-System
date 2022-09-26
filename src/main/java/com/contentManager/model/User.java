/**
 * This Blog task was completed by:
 * Paige Watson
 * Hamsini Shivakumar
 * Brian Tobin
 * Giedrius Banys
 * Margin Kantilal
 */
package com.contentManager.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;
@Getter
@Setter
@EqualsAndHashCode
public class User {
    private int id;

    @NotBlank(message = "Please enter username")
    @Size(max = 30, message= "Invalid username: Please enter user between 1-70 characters")
    private String username;

    @NotBlank(message = "Please enter password")
    @Size(max = 100, message= "Invalid password: Please enter password between 1-30 characters")
    private String password;

    @NotBlank(message = "Please enter first name")
    @Size(max = 30, message= "Invalid first name: Please enter first name between 1-30 characters")
    private String firstName;

    @NotBlank(message = "Please enter last name")
    @Size(max = 30, message= "Invalid last name: Please enter last name between 1-30 characters")
    private String lastName;

    @NotBlank(message = "Please enter Email")
    @Size(max = 30, message= "Invalid Email: Please enter Email between 1-30 characters")
    private String email;

    @Size(max = 11, message= "Invalid PhoneNumber: Please enter valid phone number")
    private String phone;

    @Size(max = 255, message= "Invalid URL: please enter URL between 1-255 characters")
    private String profilePicture;

    private boolean enable;
    private List<Role> roles;

}
