package com.example.springboot;

public class SearchCriteria {


    private String authorName;
    private String search;
    private String category;
    private int pageShowing;
    private int nuberOfRecords;

    public int getPageShowing() {
        return pageShowing;
    }

    public void setPageShowing(int pageShowing) {
        this.pageShowing = pageShowing;
    }

    public int getNuberOfRecords() {
        return nuberOfRecords;
    }

    public void setNuberOfRecords(int nuberOfRecords) {
        this.nuberOfRecords = nuberOfRecords;
    }


    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public String getCategory() {

        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "SearchCriteria{" +
                "authorName='" + authorName + '\'' +
                ", search='" + search + '\'' +
                ", category='" + category + '\'' +
                ", pageShowing=" + pageShowing +
                ", nuberOfRecords=" + nuberOfRecords +
                '}';
    }
}
