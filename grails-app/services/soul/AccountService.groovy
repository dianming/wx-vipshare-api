package soul

class AccountService {

    def serviceMethod() {

    }

    def getInfo(Long id) {
        return SoAccount.findById(id);
    }

    def getAccount(SoUseRecord useRecord, Long accountId) {
        SoAccount entity = SoAccount.get(accountId)
        entity.useCount = entity.useCount + 1
        entity.save(flush: true, failOnError: true)
        useRecord.save(flush: true, failOnError: true)
        return entity;
    }

    def save(SoAccount account) {
        SoAccount entity = SoAccount.get(account.id)
        if (entity != null) {
            entity.user = account.user == null ? entity.user : account.user;
            entity.pwd = account.pwd == null ? entity.pwd : account.pwd;
            entity.startDate = account.startDate == null ? entity.startDate : account.startDate;
            entity.endDate = account.endDate == null ? entity.endDate : account.endDate;
            entity.wxUserId = account.wxUserId == null ? entity.wxUserId : account.wxUserId;
            entity.videoName = account.videoName == null ? entity.videoName : account.videoName;
            entity.status = account.status == null ? entity.status : account.status;
            return entity.save(flush: true, failOnError: true)
        }
        account.reportCount = 0
        account.useCount = 0
        account.status = 1
        account.createDate = new Date()
        return account.save(flush: true, failOnError: true);
    }

    def getAccountList() {
        def c = SoAccount.createCriteria();
        List<SoAccount> list = c.list {
            eq("status", 1)
            order("createDate", "desc")
        }.each {
            it.user = null
            it.pwd = null
        }
        return list;
    }

    def getByUserAccountList(Long pwxUserId) {
        List<SoAccount> list = SoAccount.where {
            wxUserId == pwxUserId
            status == 1
        }.list()
        return list;
    }

    def updateAccount(SoAccount account) {
        SoAccount soAccount = SoAccount.where {
            wxUserId == account.wxUserId
            id == account.id
        }.get();
        if (soAccount != null) {
            soAccount.user = account.user == null ? soAccount.user : account.user;
            soAccount.pwd = account.pwd == null ? soAccount.pwd : account.pwd;
            soAccount.startDate = account.startDate == null ? soAccount.startDate : account.startDate;
            soAccount.endDate = account.endDate == null ? soAccount.endDate : account.endDate;
            soAccount.videoName = account.videoName == null ? soAccount.videoName : account.videoName;
            soAccount.status = account.status == null ? soAccount.status : account.status;
            soAccount.save(flush: true, failOnError: true)
        }
    }

}
