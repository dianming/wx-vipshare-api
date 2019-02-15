package soul

class UserService {

    def serviceMethod() {

    }

    def getProCodeList() {
        List<SoInvitationCode> list = SoInvitationCode.where {
            valid == 0
        }.list();
        return list;
    }

    def addCode(Integer count) {
        count = count > 100 ? 100 : count;
        List<SoInvitationCode> list = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            SoInvitationCode code = new SoInvitationCode();
            code.code = getStringRandom(5);
            code.valid = 0
            list.add(code);
        }
        SoInvitationCode.saveAll(list);
    }

    def getStringRandom(int length) {
        String val = "";
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num";
            if ("char".equalsIgnoreCase(charOrNum)) {
                int temp = random.nextInt(2) % 2 == 0 ? 65 : 97;
                val += (char) (random.nextInt(26) + temp);
            } else if ("num".equalsIgnoreCase(charOrNum)) {
                val += String.valueOf(random.nextInt(10));
            }
        }
        return val;
    }

    def auth(Long id, String pcode) {
        SoInvitationCode entity = SoInvitationCode.where {
            code == pcode
            valid == 0
        }.get()
        if (entity != null) {
            entity.wxUserId = id
            entity.valid = 1
            SoWxUser wxUser = SoWxUser.findById(id);
            if(wxUser == null){
                return null;
            }
            wxUser.vip = 1;
            wxUser.save(flush: true, failOnError: true)
            return entity.save(flush: true, failOnError: true);
        }
        return null;

    }

    def isAuth(Long id) {
        SoWxUser entity = SoWxUser.get(id);
        if (entity != null && entity.auth == 1) {
            return true;
        }
        return false;
    }

    def save(SoWxUser user) {
        SoWxUser entity = SoWxUser.where {
            openId == user.openId
        }.get();
        if (entity != null) {
            entity.nickName = user.nickName == null ? entity.nickName : user.nickName
            entity.gender = user.gender == null ? entity.gender : user.gender
            entity.language = user.language == null ? entity.language : user.language
            entity.city = user.city == null ? entity.city : user.city
            entity.province = user.province == null ? entity.province : user.province
            entity.country = user.country == null ? entity.country : user.country
            entity.avatarUrl = user.avatarUrl == null ? entity.avatarUrl : user.avatarUrl
            entity.openId = user.openId == null ? entity.openId : user.openId
            return entity.save(flush: true, failOnError: true);
        }
        user.auth = 1
        user.vip = 0
        return user.save(flush: true, failOnError: true);
    }
}
