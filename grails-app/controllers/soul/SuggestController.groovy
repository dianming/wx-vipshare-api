package soul

import grails.converters.JSON

class SuggestController {

    def suggestService

    def index() {}

    def add() {
        ResData res = new ResData();
        SoSuggest suggest = new SoSuggest();
        bindData(suggest, params);
        suggestService.save(suggest);
        render res as JSON;
    }
}
