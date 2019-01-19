package soul

class SoAccount {

    Long id;
    String user;
    String pwd;
    Integer useCount;


    Date startDate;

    Date endDate;

    String wxUserId;
    String videoName;
    Integer reportCount;
    String nickName;
    String avatarUrl;
    Integer status;

    static constraints = {
        user nullable: true
        pwd nullable: true
        useCount nullable: true
        startDate nullable: true
        endDate nullable: true
        wxUserId nullable: true
        videoName nullable: true
        reportCount nullable: true
        nickName nullable: true
        avatarUrl nullable: true
        status nullable: true
    }
}
