package airline.management.system;

public class AccessPassengerData {
    
    private final int pId;
    private final String pName;
    private final String pNation;
    private final String pGender;
    private final String pPassport;
    private final String pAddress;
    private final String pPhone;

    public AccessPassengerData(int pId, String pName, String pNation, String pGender, String pPassport, String pAddress, String pPhone) {
        this.pId = pId;
        this.pName = pName;
        this.pNation = pNation;
        this.pGender = pGender;
        this.pPassport = pPassport;
        this.pAddress = pAddress;
        this.pPhone = pPhone;
    }

    public int getpId() {
        return pId;
    }

    public String getpName() {
        return pName;
    }

    public String getpNation() {
        return pNation;
    }

    public String getpGender() {
        return pGender;
    }

    public String getpPassport() {
        return pPassport;
    }

    public String getpAddress() {
        return pAddress;
    }

    public String getpPhone() {
        return pPhone;
    }
    
    
    
}
