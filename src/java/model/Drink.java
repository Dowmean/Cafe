
package model;

/**
 *
 * @author thida
 */
public class Drink {
    private String name;
    private String type;
    private String[] adds;
    private String sweet;
    private int price;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the add
     */
    public String[] getAdds() {
        return adds;
    }

    /**
     * @param add the add to set
     */
    public void setAdds(String[] add) {
        this.adds = add;
    }

    /**
     * @return the sweet
     */
    public String getSweet() {
        return sweet;
    }

    /**
     * @param sweet the sweet to set
     */
    public void setSweet(String sweet) {
        this.sweet = sweet;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }
    
}
