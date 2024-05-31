
package com.entities;

import java.sql.Timestamp;

public class User_Query {
    
    private String qname;
    private String qemail;
    private String qbranch;
    private Timestamp qdate;
    private String qabout;

    public User_Query(String qname, String qemail, String qbranch,  String qabout) {
        this.qname = qname;
        this.qemail = qemail;
        this.qbranch = qbranch;
        this.qabout = qabout;
    }

    public String getQname() {
        return qname;
    }

    public String getQemail() {
        return qemail;
    }

    public String getQbranch() {
        return qbranch;
    }

    public Timestamp getQdateTime() {
        return qdate;
    }

    public String getQabout() {
        return qabout;
    }

    
    
    
}
