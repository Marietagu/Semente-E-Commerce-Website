package models.entities;

public class Order extends Cart {

    private float total;
    private String date;
    private int orderId;

    public Order() {super();}

    public float total() {
        return total;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total){
        this.total = total;
    }

    public String getDate() {
        return date;
    }
    public void setDate(String date){
        this.date = date;
    }

    public int getOrderId() {
        return orderId;
    }
    public void setOrderId(int orderId){
        this.orderId = orderId;
    }


}
