package soul

class SoSuggest {

    Long id;
    String msg;
    String user;
    Long wxUserId;
    Long accountId;
    Date dateCreated

    static constraints = {
    }
    static mapping = {
        autoTimestamp: true
    }
}
