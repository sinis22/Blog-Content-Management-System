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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@EqualsAndHashCode
public class Content {
    private int id;

    private LocalDateTime createDate;

    @NotBlank(message = "Please enter title")
    @Size(max = 70, message= "Invalid title: Please enter title between 1-70 characters")
    private String title;

    @NotBlank(message = "Please enter content")
    @Size(max = 9999, message= "Invalid content: Please enter content between 1-9999 characters")
    private String content;

    @NotBlank(message = "Please enter type")
    private String type;

    @NotBlank(message = "Please enter status")
    private String status;

    private LocalDateTime scheduleDate;
    private LocalDateTime expiredDate;
    private String titlePicture;
    private User user;

    @NotNull(message = "Please enter #hashtag")
    private List<Tag> tags;

}
