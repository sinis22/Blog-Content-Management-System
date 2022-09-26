/**
 * This Blog task was completed by:
 * Paige Watson
 * Hamsini Shivakumar
 * Brian Tobin
 * Giedrius Banys
 * Margin Kantilal
 */
package com.contentManager.config;


import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PWEnc {
    public static void main(String[] args) {
        String clearTxtPw = "password";
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPw = encoder.encode(clearTxtPw);
        System.out.println(hashedPw);
    }
}
