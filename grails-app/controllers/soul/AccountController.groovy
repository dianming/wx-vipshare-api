package soul

import grails.converters.JSON
import org.apache.commons.lang3.time.DateUtils
import org.springframework.beans.BeanUtils

class AccountController {

    def accountService;
    def userService;

    def index() {}

    def use(){
        ResData res = new ResData();
        SoUseRecord useRecord = new SoUseRecord();
        bindData(useRecord,params);
        SoAccount entity = accountService.getAccount(useRecord,params.accountId as Long);
        res.data = entity;
        render res as JSON;
    }

    def add() {
        ResData res = new ResData();
        SoAccount account = new SoAccount(params);
        bindData(account,params,[exclude:['endDate']])
        account.endDate = params.date("endDate","yyyy-MM-dd")
        accountService.save(account);
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

}
