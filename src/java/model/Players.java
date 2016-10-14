
package model;


public class Players {
    
    private int playerID;
    private String playerName;
    private String playerPosition;
    private int age;
    private int height;

    
    public Players() {
    this.playerID = 0;
    this.playerName = "";
    this.playerPosition = "";
    this.age = 0;
    this.height = 0;
    }
    
    
    
    public Players(int playerID, String playerName, String playerPosition, int age, int height) {
        this.playerID = playerID;
        this.playerName = playerName;
        this.playerPosition = playerPosition;
        this.age = age;
        this.height = height;
    }

    public int getPlayerID() {
        return playerID;
    }

    public void setPlayerID(int playerID) {
        this.playerID = playerID;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getPlayerPosition() {
        return playerPosition;
    }

    public void setPlayerPosition(String playerPosition) {
        this.playerPosition = playerPosition;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    @Override
    public String toString() {
        return "Players{" + "playerID=" + playerID + ", playerName=" + playerName + ", playerPosition=" + playerPosition + ", age=" + age + ", height=" + height + '}';
    }
    
    
    
}
