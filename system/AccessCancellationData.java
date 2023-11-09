package airline.management.system;

public class AccessCancellationData {
    private final int cancId;
    private final String bookId;
    private final String ticketId;
    private final String flCode;

    public AccessCancellationData(int cancId, String bookId, String ticketId, String flCode) {
        this.cancId = cancId;
        this.bookId = bookId;
        this.ticketId = ticketId;
        this.flCode = flCode;
    }

    public int getCancId() {
        return cancId;
    }

    public String getBookId() {
        return bookId;
    }

    public String getTicketId() {
        return ticketId;
    }

    public String getFlCode() {
        return flCode;
    }
    
}
