package soul

import cn.binarywang.wx.miniapp.api.WxMaService
import cn.binarywang.wx.miniapp.api.impl.WxMaServiceImpl
import cn.binarywang.wx.miniapp.bean.WxMaJscode2SessionResult
import cn.binarywang.wx.miniapp.config.WxMaInMemoryConfig
import grails.converters.JSON
import org.apache.commons.lang3.StringUtils

class LoginController {

    def userService;

    def getOpenId(){
        ResData res = new ResData();
        String code = params.code as String
        WxMaInMemoryConfig config = new WxMaInMemoryConfig();
        config.setAppid("wxb9206b26a981367c");
        config.setSecret("ef39949f4e9350231bb1ce2465eea2b8");
//        config.setToken(a.getToken());
//        config.setAesKey(a.getAesKey());
        config.setMsgDataFormat("JSON");
        WxMaService wxService = new WxMaServiceImpl();
        wxService.setWxMaConfig(config);
        WxMaJscode2SessionResult session = wxService.getUserService().getSessionInfo(code);
        res.data = session;
        render res as JSON;
    }

    def login() {
        ResData res = new ResData();
        SoWxUser user = new SoWxUser();
        bindData(user, params);
        if (params.containsKey("id") && StringUtils.isNotBlank(params.id)) {
            user.id = params.id as Long
        }
        user = userService.save(user);
        res.data = user;
        render res as JSON;
    }

    def sign() {
        ResData res = new ResData();
        SoInvitationCode entity = userService.auth(params.id as Long, params.code as String);
        res.data = entity;
        if(entity == null || entity.valid != 1){
            res.msg = "暗号不对哟";
        }
        render res as JSON;
    }

    def getWord(){
        ResData res = new ResData();
        res.msg = "天王盖地虎/小鸡炖蘑菇";
        render res as JSON;
    }

    def proCode(){
        ResData res = new ResData();
        userService.addCode(params.num as Integer);
        render res as JSON;
    }

    def proCodeList(){
        render userService.getProCodeList() as JSON;
    }

}
