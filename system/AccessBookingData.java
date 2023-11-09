package airline.management.system;

public class AccessBookingData {

    private int bookId;
    private String ticketId;
    private String pName;
    private String flCode;
    private String pGender;
    private String pPassport;
    private int amount;
    private String nationality;

    public AccessBookingData(int bookId, String ticketId, String pName, String flCode, String pGender, String pPassport, int amount, String nationality) {
        this.bookId = bookId;
        this.ticketId = ticketId;
        this.pName = pName;
        this.flCode = flCode;
        this.pGender = pGender;
        this.pPassport = pPassport;
        this.amount = amount;
        this.nationality = nationality;
    }

    public int getBookId() {
        return bookId;
    }

    public String getTicketId() {
        return ticketId;
    }

    public String getpName() {
        return pName;
    }

    public String getFlCode() {
        return flCode;
    }

    public String getpGender() {
        return pGender;
    }

    public String getpPassport() {
        return pPassport;
    }

    public int getAmount() {
        return amount;
    }

    public String getNationality() {
        return nationality;
    }

   


}
