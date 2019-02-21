package soul

import grails.converters.JSON
import org.apache.commons.lang3.time.DateUtils
import org.springframework.beans.BeanUtils

class AccountController {

    def accountService;
    def userService;

    def index() {}

    def use() {
        ResData res = new ResData();
        SoUseRecord useRecord = new SoUseRecord();
        bindData(useRecord, params);
        SoAccount entity = accountService.getAccount(useRecord, params.accountId as Long);
        res.data = entity;
        render res as JSON;
    }

    def addAccount() {
        ResData res = new ResData();
        SoAccount account = new SoAccount(params);
        bindData(account, params, [exclude: ['endDate']])
        account.endDate = params.date("endDate", "yyyy-MM-dd")
        SoAccount soAccount = accountService.save(account);
        res.data = soAccount
        if (soAccount == null) {
            res.code = "002"
            res.msg = "添加失败";
        }
        render res as JSON;
    }

    def add() {
        ResData res = new ResData();
        SoAccount account = new SoAccount(params);
        bindData(account, params, [exclude: ['endDate']])
        account.endDate = params.date("endDate", "yyyy-MM-dd")
        SoWxUser soWxUser = userService.auth(params.wxUserId as Long, params.signtext as String);
        if(soWxUser != null){
            accountService.save(account);
        }
        res.data = soWxUser
        if (soWxUser == null) {
            res.code = "001"
            res.msg = "邀请码错误";
        }
        render res as JSON;
    }

    def getList() {
        ResData res = new ResData();
        if (!userService.isAuth(params.id as Long)) {
            res.code = "002"
            res.msg = "账号无效"
            render res as JSON;
        }
        List<SoAccount> list = accountService.getAccountList();
        res.data = list;
        render res as JSON;
    }

    def getByList() {
        ResData res = new ResData();
        List<SoAccount> list = accountService.getByUserAccountList(params.wxUserId as Long);
        res.data = list;
        render res as JSON;
    }

    def del() {
        ResData res = new ResData();
        SoAccount account = new SoAccount(params);
        bindData(account, params, [exclude: ['endDate']])
        account.status = 0
        accountService.updateAccount(account);
        res.data = list;
        render res as JSON;
    }

    def getInfo() {
        ResData res = new ResData();
        SoAccount info = accountService.getInfo(params.id as Long)
        res.data = info
        render res as JSON;
    }

}

