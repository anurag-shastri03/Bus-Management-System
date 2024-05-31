
package com.entities;


public class bus_entry {
    public  String bus_no;
    public  String stop;
    public  String time;
    public String place;

    public String getPlace() {
        return place;
    }

    public bus_entry(String bus_no, String stop, String time, String place) {
        this.bus_no = bus_no;
        this.stop = stop;
        this.time = time;
        this.place = place;
    }
    
    public bus_entry(String bus_no, String stop, String time) {
        this.bus_no = bus_no;
        this.stop = stop;
        this.time = time;
    }

    public String getBus_no() {
        return bus_no;
    }

    public void setBus_no(String bus_no) {
        this.bus_no = bus_no;
    }

    public String getStop() {
        return stop;
    }

    public void setStop(String stop) {
        this.stop = stop;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    
}
