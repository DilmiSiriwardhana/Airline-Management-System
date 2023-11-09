package airline.management.system;

public class AccessFlightData {

    private final String flCode;
    private final String flSource;
    private final String flDestination;
    private final String flDate;
    private final int flSeats;

    public AccessFlightData(String flCode, String flSource, String flDestination,String flDate, int flSeats) {
        this.flCode = flCode;
        this.flSource = flSource;
        this.flDestination = flDestination;
        this.flDate = flDate;
        this.flSeats = flSeats;
    }

    public String getFlCode() {
        return flCode;
    }

    public String getFlSource() {
        return flSource;
    }

    public String getFlDestination() {
        return flDestination;
    }

    public String getFlDate() {
        return flDate;
    }

    public int getFlSeats() {
        return flSeats;
    }

}
