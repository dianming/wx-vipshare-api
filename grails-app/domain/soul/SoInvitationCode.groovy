package soul

class SoInvitationCode {

    Long id;
    String code;
    Integer valid;
    String wxUserId;
    Date dateCreated
    Date lastUpdated

    static constraints = {
        code nullable: true
        valid nullable: true
        wxUserId nullable: true
    }
    static mapping = {
        autoTimestamp: true
    }
}
