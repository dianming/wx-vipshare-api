package soul

class SoWxUser {

    Long id;//` int(11) NOT NULL,
    String nickName;//` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
    Integer gender;//` int(11) DEFAULT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
    String language;//` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户的语言，简体中文为zh_CN',
    String city;//` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在城市',
    String province;//` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在省份',
    String country;//` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在国家',
    String avatarUrl;//` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表132*132正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
    String openId;//` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    Integer auth;
    Integer vip;

    static constraints = {
        nickName nullable: true
        gender nullable: true
        language nullable: true
        city nullable: true
        province nullable: true
        country nullable: true
        avatarUrl nullable: true
        openId nullable: true
        auth nullable: true
        vip nullable: true
    }
}
