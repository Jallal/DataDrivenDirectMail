package com.example.springboot;

import java.util.List;

public class AjaxResponseBody {
    String msg;
    List<PublisherInfo> result;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public List<PublisherInfo> getResult() {
        return result;
    }

    public void setResult(List<PublisherInfo> result) {
        this.result = result;
    }

}
