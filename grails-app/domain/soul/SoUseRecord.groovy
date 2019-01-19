package soul

class SoUseRecord {

    Integer id
    String nickName
    String avatarUrl
    String latitude;
    String longitude;
    Integer accuracy;
    String wxUserId;
    Integer accountId;

    static constraints = {
        nickName nullable: true
        avatarUrl nullable: true
        latitude nullable: true
        longitude nullable: true
        accuracy nullable: true
        wxUserId nullable: true
        accountId nullable: true
    }
}
