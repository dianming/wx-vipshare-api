package soul

class AccountService {

    def serviceMethod() {

    }

    def getAccount(SoUseRecord useRecord, Long accountId) {
        SoAccount entity = SoAccount.get(accountId)
        entity.useCount = entity.useCount+1
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
        return account.save(flush: true, failOnError: true);
    }

    def getAccountList() {
        List<SoAccount> list = SoAccount.where {
            status == 1
        }.list().each {
            it.user = null
            it.pwd = null
        }
        return list;
    }

}
