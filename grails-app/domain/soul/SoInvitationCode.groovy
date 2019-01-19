package soul

class SoInvitationCode {

    Long id;
    String code;
    Integer valid;
    String wxUserId;

    static constraints = {
        code nullable: true
        valid nullable: true
        wxUserId nullable: true
    }
}
