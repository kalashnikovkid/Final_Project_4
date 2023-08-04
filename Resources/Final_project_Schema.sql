-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Users" (
    "User_ID" int   NOT NULL,
    "Location" varchar(255)   NOT NULL,
    "Age" int   NOT NULL,
    CONSTRAINT "pk_Users" PRIMARY KEY (
        "User_ID"
     )
);

CREATE TABLE "Books" (
    "ISBN" varchar(255)   NOT NULL,
    "Book_title" varchar(255)   NOT NULL,
    "Book_Author" varchar(255)   NOT NULL,
    "Publishing_Year" int   NOT NULL,
    "Publisher" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Books" PRIMARY KEY (
        "ISBN"
     )
);

CREATE TABLE "Ratings" (
    "Rating_ID" serial,   NOT NULL,
    "User_ID" int   NOT NULL,
    "ISBN" varchar(255)   NOT NULL,
    "Book_Rating" int   NOT NULL,
    CONSTRAINT "pk_Ratings" PRIMARY KEY (
        "Rating_ID"
     )
);

ALTER TABLE "Ratings" ADD CONSTRAINT "fk_Ratings_User_ID" FOREIGN KEY("User_ID")
REFERENCES "Users" ("User_ID");

ALTER TABLE "Ratings" ADD CONSTRAINT "fk_Ratings_ISBN" FOREIGN KEY("ISBN")
REFERENCES "Books" ("ISBN");

